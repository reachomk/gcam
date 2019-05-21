.class public interface abstract Lcom/android/camera/module/videointent/state/VideoIntentContext;
.super Ljava/lang/Object;
.source "VideoIntentContext.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract getActivityLifetime()Lcom/android/camera/util/lifetime/ActivityLifetime;
.end method

.method public abstract getAeController$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CL1MURJKE9NMOR35E8TG____()Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;
.end method

.method public abstract getAndroidServices()Lcom/google/android/apps/camera/inject/app/AndroidServices;
.end method

.method public abstract getAppController()Lcom/android/camera/app/AppController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCamcorderManager()Lcom/android/camera/camcorder/CamcorderManager;
.end method

.method public abstract getCameraDeviceManager()Lcom/android/camera/device/CameraDeviceManager;
.end method

.method public abstract getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;
.end method

.method public abstract getCaptureLayoutHelper()Lcom/android/camera/ui/CaptureLayoutHelper;
.end method

.method public abstract getCaptureModuleSoundPlayer()Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getEvScrollingState$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end method

.method public abstract getFatalErrorHandler()Lcom/android/camera/error/FatalErrorHandler;
.end method

.method public abstract getFlashSetting()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getLocationProvider()Lcom/android/camera/location/LocationProvider;
.end method

.method public abstract getMainThread()Lcom/google/android/apps/camera/async/MainThread;
.end method

.method public abstract getMediaStorageCallback()Lcom/android/camera/camcorder/MediaStorageCallback;
.end method

.method public abstract getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;
.end method

.method public abstract getOneCameraManager()Lcom/android/camera/one/OneCameraManager;
.end method

.method public abstract getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;
.end method

.method public abstract getPreviewAspectRatio()Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/util/AspectRatio;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResourceSurfaceTextureFactory()Lcom/android/camera/module/ResourceSurfaceTextureFactory;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getUri()Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideo2FileSaver()Lcom/android/camera/module/video2/Video2FileSaver;
.end method

.method public abstract getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;
.end method

.method public abstract getVideoCamcorderDeviceStatechart()Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;
.end method

.method public abstract getVideoIntentStatechart()Lcom/android/camera/ui/controller/VideoIntentStatechart;
.end method

.method public abstract getViewfinderSizeSelector()Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;
.end method

.method public abstract getWhiteBalanceSetting()Lcom/android/camera/settings/WhiteBalanceSetting;
.end method

.method public abstract setUri(Landroid/net/Uri;)V
.end method
