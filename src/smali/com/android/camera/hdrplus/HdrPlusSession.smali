.class public interface abstract Lcom/android/camera/hdrplus/HdrPlusSession;
.super Ljava/lang/Object;
.source "HdrPlusSession.java"


# virtual methods
.method public abstract addMeteringFrame(Lcom/android/camera/hdrplus/HdrPlusShot;ILcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method

.method public abstract addPayloadFrame(Lcom/android/camera/hdrplus/HdrPlusShot;ILcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
.end method

.method public abstract addViewfinderFrame(IZLcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
.end method

.method public abstract beginMeteringFrames(Lcom/android/camera/hdrplus/HdrPlusShot;)Lcom/google/googlex/gcam/BurstSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method

.method public abstract beginPayloadFrames(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/google/googlex/gcam/BurstSpec;)V
.end method

.method public abstract buildPayloadBurstSpec(Lcom/android/camera/hdrplus/HdrPlusShot;Lcom/google/googlex/gcam/AeResults;)Lcom/google/googlex/gcam/BurstSpec;
.end method

.method public abstract computeAeResults$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMGP3IE1M7ASPF91I74K3CELPL6Q3FEGTLKJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQKDTQ62R23C5O78TBICL96ASRLDHQ50SJFF1SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQ9DLGMEPAGE9NNGU9R55666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7C______(Lcom/android/camera/hdrplus/HdrPlusShot;ZLcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/google/googlex/gcam/AeResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method

.method public abstract endMeteringFrames(Lcom/android/camera/hdrplus/HdrPlusShot;)Lcom/google/googlex/gcam/BurstSpec;
.end method

.method public abstract endPayloadFrames(Lcom/android/camera/hdrplus/HdrPlusShot;)Z
.end method

.method public abstract flushViewfinder(I)V
.end method

.method public abstract getInitParams()Lcom/google/googlex/gcam/InitParams;
.end method

.method public abstract getLatestAeResultsObservable()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startShotCapture$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ1ADIN8T39DPJN6JBFCHQMOP948PM62SR87D666RRD5TJMURR7DHIIUPRFDTJMOPBO5TJM6OBD5T0MAKJ5EDQMOT3J7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NL8RRKC5M46OBGEHQN4PAICLPNAR3KA1P6UU3P7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMGP3IE1M7ASPF91I74K3CELPL6Q3FEGTG____(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/google/googlex/gcam/AeResults;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/android/camera/hdrplus/HdrPlusShot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method

.method public abstract startZslShotCapture$514KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5T7MSPA3C5MMASJ1ADIN8T39DPJN6JBFCHQMOP948PM62SR87D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NL8RRKC5M46OBGEHQN4PAICLPNAR3KA1P6UU3P7D4IIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUQ34E9O6OTBJ5T468SIGDHQN6KR8DTQ3M___(ILcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;I)Lcom/android/camera/hdrplus/HdrPlusShot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method
