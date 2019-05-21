.class public interface abstract Lcom/android/camera/app/AppController;
.super Ljava/lang/Object;
.source "AppController.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;"
    }
.end annotation


# virtual methods
.method public abstract addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
.end method

.method public abstract finishActivityWithIntentCanceled()V
.end method

.method public abstract finishActivityWithIntentCompleted(Landroid/content/Intent;)V
.end method

.method public abstract finishActivityWithReason(Ljava/lang/String;)V
.end method

.method public abstract getActivityContext()Landroid/content/Context;
.end method

.method public abstract getActivityServices()Lcom/google/android/apps/camera/inject/activity/ActivityServices;
.end method

.method public abstract getActivityWindow()Landroid/view/Window;
.end method

.method public abstract getActivityWindowManager()Landroid/view/WindowManager;
.end method

.method public abstract getAndroidContext()Landroid/content/Context;
.end method

.method public abstract getButtonManager()Lcom/android/camera/ui/ButtonManager;
.end method

.method public abstract getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;
.end method

.method public abstract getCameraFeatureConfig()Lcom/android/camera/one/v2/OneCameraFeatureConfig;
.end method

.method public abstract getCameraProvider()Lcom/android/camera/app/LegacyCameraProvider;
.end method

.method public abstract getCameraScope()Ljava/lang/String;
.end method

.method public abstract getCheckedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getCurrentMode()Lcom/android/camera/util/CameraMode;
.end method

.method public abstract getCurrentModuleController()Lcom/android/camera/module/ModuleController;
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract getLocationProvider()Lcom/android/camera/location/LocationProvider;
.end method

.method public abstract getMainLooper()Landroid/os/Looper;
.end method

.method public abstract getModuleScope()Ljava/lang/String;
.end method

.method public abstract getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getScreenOnController()Lcom/android/camera/util/activity/ScreenOnController;
.end method

.method public abstract getServices$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___()Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;
.end method

.method public abstract getSettings()Lcom/android/camera/settings/Settings;
.end method

.method public abstract getSettingsManager()Lcom/android/camera/settings/SettingsManager;
.end method

.method public abstract getWeakActivity()Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initialize()Z
.end method

.method public abstract isStopped()Z
.end method

.method public abstract launchActivityByIntent(Landroid/content/Intent;)V
.end method

.method public abstract lockOrientation()V
.end method

.method public abstract notifyNewMedia(Landroid/net/Uri;)V
.end method

.method public abstract onModeSelected(Lcom/android/camera/util/CameraMode;)V
.end method

.method public abstract onSettingsSelected()V
.end method

.method public abstract openPhotoSphereViewer(Landroid/net/Uri;)V
.end method

.method public abstract playVideo(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
.end method

.method public abstract setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;Z)V
.end method

.method public abstract showBurstEditor(Lcom/android/camera/data/BurstItem;)V
.end method

.method public abstract unlockOrientation()V
.end method

.method public abstract updatePreviewAspectRatio(F)V
.end method

.method public abstract updatePreviewTransform(Landroid/graphics/Matrix;)V
.end method
