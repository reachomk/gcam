.class public final Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideImageCaptureStateTrackerFactory;
.super Ljava/lang/Object;
.source "PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideImageCaptureStateTrackerFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final stateTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Floats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Floats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideImageCaptureStateTrackerFactory;->stateTrackerProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Floats;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideImageCaptureStateTrackerFactory;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideImageCaptureStateTrackerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1023
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideImageCaptureStateTrackerFactory;->stateTrackerProvider:Ljavax/inject/Provider;

    .line 1025
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Floats;

    .line 1024
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->provideImageCaptureStateTracker$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKRKC5Q6AL3IC5HMMQBECT4MQOB7CL1M2S3KELP6AGRFDLMM2RJ47CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IL6T31EHIL8SJ1CDLMASHR(Lcom/google/common/primitives/Floats;)Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1023
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;

    .line 9
    return-object v0
.end method
