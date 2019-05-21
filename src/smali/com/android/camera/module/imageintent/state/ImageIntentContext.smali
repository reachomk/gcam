.class public final Lcom/android/camera/module/imageintent/state/ImageIntentContext;
.super Ljava/lang/Object;
.source "ImageIntentContext.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# instance fields
.field private final activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private final androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

.field private final appController:Lcom/android/camera/app/AppController;

.field private final cameraDeviceStatechart:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

.field private final cameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

.field private final cameraHandler:Landroid/os/Handler;

.field private final cameraThread:Landroid/os/HandlerThread;

.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private final context:Landroid/content/Context;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private final evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private final filesProxy:Lcom/android/camera/storage/FilesProxy;

.field private final focusController:Lcom/android/camera/ui/focus/FocusController;

.field private final gridLinesProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final imageIntentHardwareSpecProvider$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNMIRB1CTIMIRJKCLN78BQ9DLGMEPA9DPQ6ARJK91GN4P3NC5P6AKRGCLHL0SJFEPKM8PBI7C______:Lcom/google/android/apps/camera/async/CloseableFutures;

.field private final imageIntentStatechart:Lcom/android/camera/ui/controller/ImageIntentStatechart;

.field private final intent:Landroid/content/Intent;

.field private final locationManager:Lcom/android/camera/location/LocationProvider;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final oneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final previewAspectRatio:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/util/AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field private final previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

.field private final previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

.field private final resolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

.field private final resourceSurfaceTextureFactory:Lcom/android/camera/module/ResourceSurfaceTextureFactory;

.field private final settings:Lcom/android/camera/settings/Settings;

.field private final settingsManager:Lcom/android/camera/settings/SettingsManager;

.field private final shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

.field private final viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/android/camera/module/imageintent/ImageIntentModuleUI;Lcom/google/android/apps/camera/async/MainThread;Landroid/content/Context;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/storage/CameraFileUtil;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/one/OneCameraOpener;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/module/ResourceSurfaceTextureFactory;Lcom/android/camera/settings/Settings;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;Lcom/android/camera/error/ShotFailureHandler;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/settings/CameraFacingSetting;Lcom/android/camera/settings/ResolutionSetting;Lcom/android/camera/app/AppController;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/processing/imagebackend/ImageBackend;Landroid/util/DisplayMetrics;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/google/android/apps/camera/async/CloseableFutures;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/controller/ImageIntentStatechart;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/focus/FocusController;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/camera/module/imageintent/ImageIntentModuleUI;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/android/camera/storage/FilesProxy;",
            "Lcom/android/camera/storage/CameraFileUtil;",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            "Lcom/android/camera/one/OneCameraOpener;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/android/camera/location/LocationProvider;",
            "Lcom/android/camera/burst/OrientationLockController;",
            "Lcom/android/camera/module/ResourceSurfaceTextureFactory;",
            "Lcom/android/camera/settings/Settings;",
            "Lcom/android/camera/settings/SettingsManager;",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            "Lcom/android/camera/error/ShotFailureHandler;",
            "Lcom/android/camera/burst/BurstFacade;",
            "Lcom/android/camera/settings/CameraFacingSetting;",
            "Lcom/android/camera/settings/ResolutionSetting;",
            "Lcom/android/camera/app/AppController;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            "Lcom/google/android/apps/camera/async/CloseableFutures;",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            "Lcom/android/camera/ui/controller/ImageIntentStatechart;",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/ui/focus/FocusController;",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->intent:Landroid/content/Intent;

    .line 127
    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    .line 128
    iput-object p3, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 129
    iput-object p4, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->context:Landroid/content/Context;

    .line 130
    iput-object p5, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 131
    iput-object p6, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 132
    iput-object p7, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    .line 134
    iput-object p9, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 135
    iput-object p10, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->oneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    .line 136
    iput-object p11, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 137
    iput-object p12, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->locationManager:Lcom/android/camera/location/LocationProvider;

    .line 138
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 139
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->resourceSurfaceTextureFactory:Lcom/android/camera/module/ResourceSurfaceTextureFactory;

    .line 140
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->settings:Lcom/android/camera/settings/Settings;

    .line 141
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 143
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->cameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

    .line 144
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->resolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    .line 145
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 147
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 148
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    .line 149
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    .line 150
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

    .line 151
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->appController:Lcom/android/camera/app/AppController;

    .line 152
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 153
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->cameraDeviceStatechart:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    .line 154
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->imageIntentStatechart:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    .line 155
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 156
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->gridLinesProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 157
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->focusController:Lcom/android/camera/ui/focus/FocusController;

    .line 158
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    .line 159
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    .line 161
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImageCaptureIntentModule.CameraHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->cameraThread:Landroid/os/HandlerThread;

    .line 162
    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->cameraHandler:Landroid/os/Handler;

    .line 164
    new-instance v1, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->previewAspectRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 165
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->imageIntentHardwareSpecProvider$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNMIRB1CTIMIRJKCLN78BQ9DLGMEPA9DPQ6ARJK91GN4P3NC5P6AKRGCLHL0SJFEPKM8PBI7C______:Lcom/google/android/apps/camera/async/CloseableFutures;

    .line 166
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 171
    return-void
.end method

.method public final getActivityLifetime()Lcom/android/camera/util/lifetime/ActivityLifetime;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    return-object v0
.end method

.method public final getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getAndroidServices()Lcom/google/android/apps/camera/inject/app/AndroidServices;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->androidServices:Lcom/google/android/apps/camera/inject/app/AndroidServices;

    return-object v0
.end method

.method public final getAppController()Lcom/android/camera/app/AppController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->appController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method public final getCameraDeviceStatechart()Lcom/android/camera/ui/controller/CameraDeviceStatechart;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->cameraDeviceStatechart:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    return-object v0
.end method

.method public final getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->cameraFacingSetting:Lcom/android/camera/settings/CameraFacingSetting;

    return-object v0
.end method

.method public final getCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->cameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getCaptureLayoutHelper()Lcom/android/camera/ui/CaptureLayoutHelper;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    return-object v0
.end method

.method public final getCaptureModuleSoundPlayer()Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->captureModuleSoundPlayer:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    return-object v0
.end method

.method public final getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public final getEvCompViewController()Lcom/google/android/apps/camera/evcomp/EvCompViewController;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    return-object v0
.end method

.method public final getFatalErrorHandler()Lcom/android/camera/error/FatalErrorHandler;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    return-object v0
.end method

.method public final getFileNamer()Lcom/android/camera/storage/FileNamer;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->fileNamer:Lcom/android/camera/storage/FileNamer;

    return-object v0
.end method

.method public final getFilesProxy()Lcom/android/camera/storage/FilesProxy;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    return-object v0
.end method

.method public final getFocusController()Lcom/android/camera/ui/focus/FocusController;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->focusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method public final getGridLinesProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->gridLinesProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final getImageIntentHardwareSpecProvider$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABR9DLGMEPB9DPQ6ARJK5T4MQOB7CL4MST35DPQ4GOBICHRM2SJ5ADO6AOQGE9NNCQB4CLP3M___()Lcom/google/android/apps/camera/async/CloseableFutures;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->imageIntentHardwareSpecProvider$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNMIRB1CTIMIRJKCLN78BQ9DLGMEPA9DPQ6ARJK91GN4P3NC5P6AKRGCLHL0SJFEPKM8PBI7C______:Lcom/google/android/apps/camera/async/CloseableFutures;

    return-object v0
.end method

.method public final getImageIntentStatechart()Lcom/android/camera/ui/controller/ImageIntentStatechart;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->imageIntentStatechart:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getLocationProvider()Lcom/android/camera/location/LocationProvider;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->locationManager:Lcom/android/camera/location/LocationProvider;

    return-object v0
.end method

.method public final getMainThread()Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method public final getModuleUI()Lcom/android/camera/module/imageintent/ImageIntentModuleUI;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->moduleUI:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    return-object v0
.end method

.method public final getOneCameraManager()Lcom/android/camera/one/OneCameraManager;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    return-object v0
.end method

.method public final getOneCameraOpener()Lcom/android/camera/one/OneCameraOpener;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->oneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    return-object v0
.end method

.method public final getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    return-object v0
.end method

.method public final getPreviewAspectRatio()Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/util/AspectRatio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->previewAspectRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method public final getPreviewLongPressListener()Lcom/android/camera/ui/wirers/PreviewLongPressListener;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->previewLongPressListener:Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    return-object v0
.end method

.method public final getPreviewTapListener()Lcom/android/camera/ui/wirers/PreviewTapListener;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->previewTapListener:Lcom/android/camera/ui/wirers/PreviewTapListener;

    return-object v0
.end method

.method public final getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->resolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    return-object v0
.end method

.method public final getResourceSurfaceTextureFactory()Lcom/android/camera/module/ResourceSurfaceTextureFactory;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->resourceSurfaceTextureFactory:Lcom/android/camera/module/ResourceSurfaceTextureFactory;

    return-object v0
.end method

.method public final getSettings()Lcom/android/camera/settings/Settings;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->settings:Lcom/android/camera/settings/Settings;

    return-object v0
.end method

.method public final getSettingsManager()Lcom/android/camera/settings/SettingsManager;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method public final getShotFailureHandler()Lcom/android/camera/error/ShotFailureHandler;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

    return-object v0
.end method

.method public final getViewfinderSizeSelector()Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    return-object v0
.end method
