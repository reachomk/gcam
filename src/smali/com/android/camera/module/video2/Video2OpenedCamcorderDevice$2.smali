.class final Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$2;
.super Ljava/lang/Object;
.source "Video2OpenedCamcorderDevice.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/BottomBarUISpecProvider;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/android/camera/camcorder/CamcorderDevice;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/ui/focus/FocusController;Lcom/android/camera/module/FocusPointNormalizer;Ljava/util/concurrent/Executor;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/ui/PreviewOverlay;Lcom/android/camera/util/activity/ScreenOnController;Lcom/android/camera/util/Size;Lcom/android/camera/data/VideoItemFactory;Lcom/android/camera/module/video2/Video2FileSaver;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/android/camera/module/video2/Video2ModuleUI;Lcom/android/camera/module/video2/Video2OrientationCalculator;Lcom/android/camera/module/video2/Video2Settings;Lcom/android/camera/module/video2/Video2Sound;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/data/VideoRotationMetadataLoader;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/android/apps/camera/aaa/AfStateTransition;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$focusController:Lcom/android/camera/ui/focus/FocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusController;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$2;->val$focusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 225
    check-cast p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;

    .line 1228
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$2;->val$focusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/focus/FocusController;->update(Ljava/lang/Object;)V

    .line 225
    return-void
.end method
