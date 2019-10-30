#include "QOptimize.h"

QOptimize::QOptimize(QObject* parent) :
  QObject(parent),
  ShapeWorksOptimize() {}

//---------------------------------------------------------------------------
QOptimize::~QOptimize()
{}

//---------------------------------------------------------------------------
std::vector<std::vector<itk::Point<double>>> QOptimize::localPoints()
{
  //QMutexLocker locker(&mutex);
  return this->localPoints_;
}

//---------------------------------------------------------------------------
std::vector<std::vector<itk::Point<double>>> QOptimize::globalPoints()
{
  //QMutexLocker locker(&mutex);
  return this->globalPoints_;
}

//---------------------------------------------------------------------------
void QOptimize::SetIterationCommand()
{
  this->iterate_command_ = itk::MemberCommand<QOptimize>::New();
  this->iterate_command_->SetCallbackFunction(this, &QOptimize::iterateCallback);
  m_Sampler->GetOptimizer()->AddObserver(itk::IterationEvent(), this->iterate_command_);
}

//---------------------------------------------------------------------------
void QOptimize::iterateCallback(itk::Object* caller, const itk::EventObject &e)
{
  // run superclass iterateCallback
  ShapeWorksOptimize::iterateCallback(caller, e);

  auto transform = this->m_Sampler->GetParticleSystem()->GetTransform();

  if (transform(0, 0) != transform(0, 0)) {
    //throw on NaN
    throw std::runtime_error("Optimize failed! Please try changing parameters.");
  }

  bool update = false;
  if (!this->time_since_last_update_.isValid()) {
    update = true;
  }
  else {
    auto time_since = this->time_since_last_update_.elapsed();
    if (time_since > 1000) {
      update = true;
    }
  }
  this->time_since_last_update_.start();

  this->reportInterval_ = 100;

//  if (this->iterCount_ % this->reportInterval_ == 0) {
  if (update) {

    //QMutexLocker locker(&mutex);

    this->localPoints_.clear();
    this->globalPoints_.clear();

    // copy particles
    for (size_t d = 0; d < this->m_Sampler->
         GetParticleSystem()->GetNumberOfDomains(); d++) {

      // blank set of points
      this->localPoints_.push_back(std::vector<itk::Point<double>>());
      this->globalPoints_.push_back(std::vector<itk::Point<double>>());

      // for each particle
      for (size_t j = 0; j < this->m_Sampler->
           GetParticleSystem()->GetNumberOfParticles(d); j++) {
        auto pos = this->m_Sampler->GetParticleSystem()->GetPosition(j, d);
        auto pos2 = this->m_Sampler->GetParticleSystem()->GetTransformedPosition(j, d);
        this->localPoints_[d].push_back(pos);
        this->globalPoints_[d].push_back(pos2);
      }
    }

    emit progress(this->iterCount_ * 100 / this->m_total_iterations);
  }
  this->iterCount_++;
}
