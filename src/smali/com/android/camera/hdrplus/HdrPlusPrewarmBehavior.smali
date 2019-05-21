.class public final Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;
.super Ljava/lang/Object;
.source "HdrPlusPrewarmBehavior.java"

# interfaces
.implements Lcom/android/camera/behavior/Behavior;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final gcamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/googlex/gcam/Gcam;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraFeatureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "HdrPlusPrewarm"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/debug/trace/Trace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/googlex/gcam/Gcam;",
            ">;",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            "Lcom/android/camera/debug/trace/Trace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;->gcamProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;->oneCameraFeatureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    .line 31
    iput-object p3, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 32
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 36
    .line 1050
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;->oneCameraFeatureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->getHdrPlusSupportLevel$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHF9TN6AGR1DLIN4OA6CLGN8TBICL1MURJ6D5JI8I34E986OTBJADQN0S3FE9Q4OPBMCLM3M___(Lcom/android/camera/one/OneCamera$Facing;)I

    move-result v0

    sget v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;->oneCameraFeatureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    .line 1051
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->getHdrPlusSupportLevel$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHF9TN6AGR1DLIN4OA6CLGN8TBICL1MURJ6D5JI8I34E986OTBJADQN0S3FE9Q4OPBMCLM3M___(Lcom/android/camera/one/OneCamera$Facing;)I

    move-result v0

    sget v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 36
    :goto_0
    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "HdrPlus#initialize"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;->gcamProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 47
    :goto_1
    return-void

    .line 1051
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_2
    sget-object v0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;->TAG:Ljava/lang/String;

    const-string v1, "HdrPlus is not supported on this device."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
