.class public Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager$Factory;
.super Ljava/lang/Object;
.source "DebugOutputFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideDataCollector(Lcom/android/camera/one/v2/imagesaver/tuning/ProductionNoopImageWriter;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;
    .locals 1

    .prologue
    .line 1042
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataConsumer;)V

    return-object v0
.end method

.method public static provideDataCollector(Lcom/android/camera/one/v2/imagesaver/tuning/RawWriter;Lcom/android/camera/one/v2/imagesaver/tuning/YuvWriter;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;
    .locals 1

    .prologue
    .line 1024
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;-><init>(Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataConsumer;)V

    return-object v0
.end method

.method public static provideSetpropInitializer(Lcom/android/camera/one/v2/imagesaver/tuning/TuningSetpropInitializer;)Lcom/android/camera/one/v2/lifecycle/StartTask;
    .locals 0

    .prologue
    .line 1029
    return-object p0
.end method
