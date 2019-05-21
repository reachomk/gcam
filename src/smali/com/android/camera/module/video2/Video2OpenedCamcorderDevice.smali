.class public final Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;
.super Ljava/lang/Object;
.source "Video2OpenedCamcorderDevice.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bottomBarUISpecProvider:Lcom/android/camera/ui/BottomBarUISpecProvider;

.field private final camcorderCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;

.field private final camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

.field private final camcorderDevice:Lcom/android/camera/camcorder/CamcorderDevice;

.field private final camcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

.field private final camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final concurrentStateTorchSwitch:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final concurrentStateZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private final facing:Lcom/android/camera/one/OneCamera$Facing;

.field private final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field private final focusController:Lcom/android/camera/ui/focus/FocusController;

.field private final focusPointNormalizer:Lcom/android/camera/module/FocusPointNormalizer;

.field private final iOExecutor:Ljava/util/concurrent/Executor;

.field private isFocusLockHolding:Z

.field private lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final localFilmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

.field private final lock:Ljava/lang/Object;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final observablePreviewLayoutRect:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

.field private final previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final previewSize:Lcom/android/camera/util/Size;

.field private final screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

.field private final startDelayExecutor:Lcom/google/android/apps/camera/async/DelayedExecutor;

.field private state:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

.field private video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

.field private final video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

.field private final video2Logger$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI9HNMEPR5E8TG____:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

.field private final video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

.field private final video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

.field private final video2Settings:Lcom/android/camera/module/video2/Video2Settings;

.field private final video2Sound:Lcom/android/camera/module/video2/Video2Sound;

.field private final videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

.field private final videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;

.field private final viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

.field private final zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "Vid2OpenedCdrDev"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/BottomBarUISpecProvider;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/android/camera/camcorder/CamcorderDevice;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/ui/focus/FocusController;Lcom/android/camera/module/FocusPointNormalizer;Ljava/util/concurrent/Executor;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/ui/PreviewOverlay;Lcom/android/camera/util/activity/ScreenOnController;Lcom/android/camera/util/Size;Lcom/android/camera/data/VideoItemFactory;Lcom/android/camera/module/video2/Video2FileSaver;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/android/camera/module/video2/Video2ModuleUI;Lcom/android/camera/module/video2/Video2OrientationCalculator;Lcom/android/camera/module/video2/Video2Settings;Lcom/android/camera/module/video2/Video2Sound;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/data/VideoRotationMetadataLoader;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/ui/BottomBarUISpecProvider;",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            "Lcom/android/camera/camcorder/CamcorderCharacteristics;",
            "Lcom/android/camera/camcorder/CamcorderDevice;",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            ">;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Lcom/android/camera/ui/focus/FocusController;",
            "Lcom/android/camera/module/FocusPointNormalizer;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/android/camera/data/PhotoItemFactory;",
            "Lcom/android/camera/ui/PreviewOverlay;",
            "Lcom/android/camera/util/activity/ScreenOnController;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/data/VideoItemFactory;",
            "Lcom/android/camera/module/video2/Video2FileSaver;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            "Lcom/android/camera/module/video2/Video2ModuleUI;",
            "Lcom/android/camera/module/video2/Video2OrientationCalculator;",
            "Lcom/android/camera/module/video2/Video2Settings;",
            "Lcom/android/camera/module/video2/Video2Sound;",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            "Lcom/android/camera/data/VideoRotationMetadataLoader;",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lock:Ljava/lang/Object;

    .line 108
    new-instance v1, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 110
    new-instance v1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$1;-><init>(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)V

    iput-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 142
    sget-object v1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->NO_SESSION:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    iput-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->state:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    .line 187
    iput-object p2, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->bottomBarUISpecProvider:Lcom/android/camera/ui/BottomBarUISpecProvider;

    .line 188
    iput-object p3, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 189
    iput-object p4, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

    .line 190
    iput-object p5, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderDevice:Lcom/android/camera/camcorder/CamcorderDevice;

    .line 191
    iput-object p6, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 192
    iput-object p7, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->concurrentStateTorchSwitch:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 193
    iput-object p8, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->concurrentStateZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 194
    iput-object p9, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 195
    new-instance v1, Lcom/google/android/apps/camera/async/DelayedExecutor;

    const-string v2, "V2CamDev"

    const/16 v3, 0xfa

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/camera/async/DelayedExecutor;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->startDelayExecutor:Lcom/google/android/apps/camera/async/DelayedExecutor;

    .line 196
    iput-object p10, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 197
    iput-object p11, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->focusController:Lcom/android/camera/ui/focus/FocusController;

    .line 198
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->focusPointNormalizer:Lcom/android/camera/module/FocusPointNormalizer;

    .line 199
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->iOExecutor:Ljava/util/concurrent/Executor;

    .line 200
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->localFilmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 201
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 202
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->facing:Lcom/android/camera/one/OneCamera$Facing;

    .line 203
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->observablePreviewLayoutRect:Lcom/google/android/apps/camera/async/Observable;

    .line 204
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 205
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    .line 206
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 207
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    .line 208
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->previewSize:Lcom/android/camera/util/Size;

    .line 209
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    .line 210
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    .line 211
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2Logger$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI9HNMEPR5E8TG____:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 212
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    .line 213
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    .line 214
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    .line 215
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2Sound:Lcom/android/camera/module/video2/Video2Sound;

    .line 216
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    .line 217
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;

    .line 218
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    .line 219
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 220
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 222
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v1, p5}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 223
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->startDelayExecutor:Lcom/google/android/apps/camera/async/DelayedExecutor;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 224
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-interface {p5}, Lcom/android/camera/camcorder/CamcorderDevice;->getAutoFocusStateTransition()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$2;

    invoke-direct {v3, p11}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$2;-><init>(Lcom/android/camera/ui/focus/FocusController;)V

    move-object/from16 v0, p15

    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->concurrentStateZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->facing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->iOExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF697N0PBECLI46OBDCDNN4P35E926ATJ9CDIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQCDTHM2R26D5M6QSRKE9KN0H31EHGK2P31E1Q6ASHR(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->localFilmstripDataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF697N0PBECLI46OBDCDNN4P35E926ATJ9CDIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLEHKMOBRCC5SMUTBK5T7N4QB5DPQ62T39DTN4QOBEC5JMASHR(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/burst/OrientationLockController;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/data/PhotoItemFactory;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/util/activity/ScreenOnController;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->screenOnController:Lcom/android/camera/util/activity/ScreenOnController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/data/VideoItemFactory;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/module/video2/Video2FileSaver;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2FileSaver:Lcom/android/camera/module/video2/Video2FileSaver;

    return-object v0
.end method

.method static synthetic access$1900$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF697N0PBECLI46OBDCDNN4P35E926ATJ9CDIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355TR6IP35DSP2ULJ9CHIMUCICDTJMEPBI7C______(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2Logger$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNNCQB4CLNJ4BQMD5I6ARPI9HNMEPR5E8TG____:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->focusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/module/video2/Video2OrientationCalculator;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/module/video2/Video2Sound;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2Sound:Lcom/android/camera/module/video2/Video2Sound;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/data/VideoRotationMetadataLoader;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->videoRotationMetadataLoader:Lcom/android/camera/data/VideoRotationMetadataLoader;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/camcorder/CamcorderCharacteristics;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/ui/BottomBarUISpecProvider;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->bottomBarUISpecProvider:Lcom/android/camera/ui/BottomBarUISpecProvider;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->zoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/ui/PreviewOverlay;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/error/FatalErrorHandler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;Z)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->isFocusLockHolding:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/camcorder/CamcorderDevice;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderDevice:Lcom/android/camera/camcorder/CamcorderDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->state:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->state:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/module/video2/Video2ModuleUI;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;)Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/google/android/apps/camera/async/DelayedExecutor;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->startDelayExecutor:Lcom/google/android/apps/camera/async/DelayedExecutor;

    return-object v0
.end method

.method private final isAfOrAeSupported()Z
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

    .line 445
    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    .line 446
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoExposureSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 446
    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->state:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    sget-object v2, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->CLOSED:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    monitor-exit v1

    .line 259
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->CLOSED:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->state:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    .line 242
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->close()V

    .line 244
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->close()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$3;

    invoke-direct {v2, p0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$3;-><init>(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 258
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 259
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final createCamcorderCaptureSession()V
    .locals 4

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->state:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    sget-object v2, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->CLOSED:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->TAG:Ljava/lang/String;

    const-string v2, "has been closed"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    monitor-exit v1

    .line 378
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->state:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    sget-object v2, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->NO_SESSION:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 270
    sget-object v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;->CREATING_SESSION:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->state:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$State;

    .line 271
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    new-instance v0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->facing:Lcom/android/camera/one/OneCamera$Facing;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->previewSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->previewSize:Lcom/android/camera/util/Size;

    .line 276
    invoke-static {v3}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;-><init>(Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/util/Size;Lcom/android/camera/util/AspectRatio;)V

    .line 278
    sget-object v1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->TAG:Ljava/lang/String;

    const-string v2, "Call Viewfinder#swapAndStartSurfaceViewViewfinder."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    .line 280
    invoke-interface {v1, v0}, Lcom/android/camera/ui/viewfinder/Viewfinder;->swapAndStartSurfaceViewViewfinder(Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$4;-><init>(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)V

    .line 283
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$5;-><init>(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)V

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onFlashStateChanged()V
    .locals 2

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->concurrentStateTorchSwitch:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->concurrentStateTorchSwitch:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 453
    return-void

    .line 452
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onPauseButtonClicked()V
    .locals 2

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->onPauseButtonClicked()V

    .line 476
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onPreviewGestureCancel()V
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->isAfOrAeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->focusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusController;->clearFocusIndicator()V

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->isFocusLockHolding:Z

    .line 441
    :cond_0
    return-void
.end method

.method public final onPreviewLongPress(Landroid/graphics/Point;)V
    .locals 4

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->isAfOrAeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->isFocusLockHolding:Z

    .line 402
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->observablePreviewLayoutRect:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 403
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->focusPointNormalizer:Lcom/android/camera/module/FocusPointNormalizer;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->facing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/camera/module/FocusPointNormalizer;->normalize(Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/android/camera/one/OneCamera$Facing;)Landroid/graphics/PointF;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->focusController:Lcom/android/camera/ui/focus/FocusController;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    .line 405
    invoke-interface {v1, v2, v3}, Lcom/android/camera/ui/focus/FocusController;->showFocusLockHoldAt(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    new-instance v3, Lcom/google/android/apps/camera/aaa/FocusPoint;

    invoke-direct {v3, v0, v1}, Lcom/google/android/apps/camera/aaa/FocusPoint;-><init>(Landroid/graphics/PointF;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 407
    new-instance v0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$6;

    invoke-direct {v0, p0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$6;-><init>(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)V

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 424
    :cond_0
    return-void
.end method

.method public final onPreviewLongPressFingerUp()V
    .locals 1

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->isAfOrAeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-boolean v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->isFocusLockHolding:Z

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->focusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusController;->showFocusLockCancel()V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->focusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusController;->showFocusLockConfirm()V

    goto :goto_0
.end method

.method public final onPreviewTapped(Landroid/graphics/Point;)V
    .locals 8

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->isAfOrAeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->focusController:Lcom/android/camera/ui/focus/FocusController;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 384
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->observablePreviewLayoutRect:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 385
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->focusPointNormalizer:Lcom/android/camera/module/FocusPointNormalizer;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->facing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/camera/module/FocusPointNormalizer;->normalize(Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/android/camera/one/OneCamera$Facing;)Landroid/graphics/PointF;

    move-result-object v1

    .line 386
    sget-object v2, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x37

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "onPreviewTapped tapPoint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " previewRect="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " normalizedPoint="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v1}, Lcom/google/android/apps/camera/aaa/FocusPoint;->at(Landroid/graphics/PointF;)Lcom/google/android/apps/camera/aaa/FocusPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 396
    :cond_0
    return-void
.end method

.method public final onPreviewVisibilityChanged(Z)V
    .locals 5

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    if-eqz v0, :cond_0

    .line 490
    if-eqz p1, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2Settings:Lcom/android/camera/module/video2/Video2Settings;

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    iget-object v3, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    iget-object v4, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->camcorderCharacteristics:Lcom/android/camera/camcorder/CamcorderCharacteristics;

    .line 495
    invoke-virtual {v4}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->isTorchAvailable()Z

    move-result v4

    .line 492
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/module/video2/Video2Settings;->isTorchOn(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Z)Z

    move-result v0

    .line 496
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->concurrentStateTorchSwitch:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 501
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->concurrentStateTorchSwitch:Lcom/google/android/apps/camera/async/ConcurrentState;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onResumeButtonClicked()V
    .locals 2

    .prologue
    .line 480
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->onResumeButtonClicked()V

    .line 484
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onShutterButtonClicked()V
    .locals 2

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->onShutterButtonClicked()V

    .line 460
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onSnapshotButtonClicked()V
    .locals 2

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->video2ActiveCamcorderCaptureSession:Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2ActiveCamcorderCaptureSession;->onSnapshotButtonClicked()V

    .line 468
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
