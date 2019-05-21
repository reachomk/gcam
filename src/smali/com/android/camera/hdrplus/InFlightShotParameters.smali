.class final Lcom/android/camera/hdrplus/InFlightShotParameters;
.super Ljava/lang/Object;
.source "InFlightShotParameters.java"


# instance fields
.field private final gcamDngImageWriter:Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;

.field private final jpegRotation:I

.field private final parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTG____:Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

.field private final processingTask:Lcom/android/camera/processing/imagebackend/ImageShadowTask;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;ILcom/android/camera/processing/imagebackend/ImageShadowTask;Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    iput-object v0, p0, Lcom/android/camera/hdrplus/InFlightShotParameters;->parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTG____:Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    .line 29
    iput p2, p0, Lcom/android/camera/hdrplus/InFlightShotParameters;->jpegRotation:I

    .line 30
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    iput-object v0, p0, Lcom/android/camera/hdrplus/InFlightShotParameters;->processingTask:Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    .line 31
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;

    iput-object v0, p0, Lcom/android/camera/hdrplus/InFlightShotParameters;->gcamDngImageWriter:Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;

    .line 32
    return-void
.end method


# virtual methods
.method public final getGcamDngImageWriter()Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/hdrplus/InFlightShotParameters;->gcamDngImageWriter:Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;

    return-object v0
.end method

.method public final getJpegRotation()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/hdrplus/InFlightShotParameters;->jpegRotation:I

    return v0
.end method

.method public final getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/hdrplus/InFlightShotParameters;->parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H862SJ1DLIN8PBIECTG____:Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    return-object v0
.end method

.method public final getProcessingTask()Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/hdrplus/InFlightShotParameters;->processingTask:Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    return-object v0
.end method
