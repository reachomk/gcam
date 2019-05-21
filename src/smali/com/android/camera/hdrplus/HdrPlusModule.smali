.class public Lcom/android/camera/hdrplus/HdrPlusModule;
.super Ljava/lang/Object;
.source "HdrPlusModule.java"


# instance fields
.field public final burstCaptureCommandFactory$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH1M2S3KELP6AGRFDLMM2RJ48PGM6T3FE9SJM___:Lcom/android/camera/data/FilmstripDataModule;

.field public final cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

.field public final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field public final frameSaverFactory$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T374OBDCL9M2TJ5E9362ORKDTP7IEO_:Lcom/android/camera/memory/MemoryModule;

.field public final imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/FilmstripDataModule;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/memory/MemoryModule;Lcom/android/camera/error/FatalErrorHandler;)V
    .locals 0

    .prologue
    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusModule;->burstCaptureCommandFactory$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH1M2S3KELP6AGRFDLMM2RJ48PGM6T3FE9SJM___:Lcom/android/camera/data/FilmstripDataModule;

    .line 1072
    iput-object p2, p0, Lcom/android/camera/hdrplus/HdrPlusModule;->imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    .line 1073
    iput-object p3, p0, Lcom/android/camera/hdrplus/HdrPlusModule;->cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    .line 1074
    iput-object p4, p0, Lcom/android/camera/hdrplus/HdrPlusModule;->frameSaverFactory$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T374OBDCL9M2TJ5E9362ORKDTP7IEO_:Lcom/android/camera/memory/MemoryModule;

    .line 1075
    iput-object p5, p0, Lcom/android/camera/hdrplus/HdrPlusModule;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 1076
    return-void
.end method
