.class final Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;
.super Ljava/lang/Object;
.source "DaggerCameraAppComponent.java"

# interfaces
.implements Lcom/android/camera/one/v2/config/OneCameraFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OneCameraFactoryImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslHdrPlusTuningImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerTuningImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadTuningImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslHdrPlusImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadNoZslImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6HdrPlusAutoWithSoftwareJpegNoZslImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6HdrPlusAutoWithSoftwareJpegImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvReprocessingImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$LimitedJpegImpl;,
        Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$LegacyJpegImpl;
    }
.end annotation


# instance fields
.field private final cameraDeviceModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM8PBMD5HMABQ3C5MMASJ18HINCQB3CL6MUP3LDHIJM___:Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;

.field private final oneCameraDependenciesModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62H35E1IMSP35DPHMIPBJ9LNM8TBCCKTG____:Lcom/google/android/gms/internal/zzahv;

.field private final oneCameraSettingsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

.field private final pictureConfigurationModule:Lcom/android/camera/one/v2/util/PictureConfigurationModule;

.field private provideBurstFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacade;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraCharacteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraDeviceFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideFaceDetectModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideFlashSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideHdrPlusModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideHdrSceneModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private providePictureConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private provideViewfinderSizeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private provideViewfinderSurfaceFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideZoomProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/app/DaggerCameraAppComponent;


# direct methods
.method private constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;Lcom/google/android/gms/internal/zzahv;Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;Lcom/android/camera/one/v2/util/PictureConfigurationModule;)V
    .locals 4

    .prologue
    .line 5103
    iput-object p1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5104
    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->cameraDeviceModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM8PBMD5HMABQ3C5MMASJ18HINCQB3CL6MUP3LDHIJM___:Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;

    .line 5105
    invoke-static {p3}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzahv;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->oneCameraDependenciesModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62H35E1IMSP35DPHMIPBJ9LNM8TBCCKTG____:Lcom/google/android/gms/internal/zzahv;

    .line 5106
    invoke-static {p4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->oneCameraSettingsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

    .line 5107
    invoke-static {p5}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/util/PictureConfigurationModule;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->pictureConfigurationModule:Lcom/android/camera/one/v2/util/PictureConfigurationModule;

    .line 6114
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->cameraDeviceModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM8PBMD5HMABQ3C5MMASJ18HINCQB3CL6MUP3LDHIJM___:Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;

    .line 7027
    new-instance v1, Lcom/android/camera/one/v2/device/CameraDeviceModule_ProvideCameraDeviceFutureFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/device/CameraDeviceModule_ProvideCameraDeviceFutureFactory;-><init>(Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;)V

    .line 6115
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideCameraDeviceFutureProvider:Ljavax/inject/Provider;

    .line 6117
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->pictureConfigurationModule:Lcom/android/camera/one/v2/util/PictureConfigurationModule;

    .line 8026
    new-instance v1, Lcom/android/camera/one/v2/util/PictureConfigurationModule_ProvidePictureConfigurationFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/util/PictureConfigurationModule_ProvidePictureConfigurationFactory;-><init>(Lcom/android/camera/one/v2/util/PictureConfigurationModule;)V

    .line 6118
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->providePictureConfigurationProvider:Ljavax/inject/Provider;

    .line 6121
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->oneCameraDependenciesModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62H35E1IMSP35DPHMIPBJ9LNM8TBCCKTG____:Lcom/google/android/gms/internal/zzahv;

    .line 8028
    new-instance v1, Lcom/android/camera/one/OneCameraDependenciesModule_ProvideViewfinderSurfaceFutureFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/OneCameraDependenciesModule_ProvideViewfinderSurfaceFutureFactory;-><init>(Lcom/google/android/gms/internal/zzahv;)V

    .line 6122
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideViewfinderSurfaceFutureProvider:Ljavax/inject/Provider;

    .line 6125
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->oneCameraDependenciesModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62H35E1IMSP35DPHMIPBJ9LNM8TBCCKTG____:Lcom/google/android/gms/internal/zzahv;

    .line 9026
    new-instance v1, Lcom/android/camera/one/OneCameraDependenciesModule_ProvideViewfinderSizeFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/OneCameraDependenciesModule_ProvideViewfinderSizeFactory;-><init>(Lcom/google/android/gms/internal/zzahv;)V

    .line 6126
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideViewfinderSizeProvider:Ljavax/inject/Provider;

    .line 6129
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->cameraDeviceModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM8PBMD5HMABQ3C5MMASJ18HINCQB3CL6MUP3LDHIJM___:Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;

    .line 10026
    new-instance v1, Lcom/android/camera/one/v2/device/CameraDeviceModule_ProvideCameraCharacteristicsFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/device/CameraDeviceModule_ProvideCameraCharacteristicsFactory;-><init>(Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;)V

    .line 6130
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideCameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 6132
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->oneCameraSettingsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

    .line 11025
    new-instance v1, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideZoomFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideZoomFactory;-><init>(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;)V

    .line 6133
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideZoomProvider:Ljavax/inject/Provider;

    .line 6135
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->oneCameraSettingsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

    .line 12025
    new-instance v1, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideHdrSceneModeFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideHdrSceneModeFactory;-><init>(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;)V

    .line 6136
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideHdrSceneModeProvider:Ljavax/inject/Provider;

    .line 6138
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->oneCameraSettingsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideCameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 12034
    new-instance v2, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFaceDetectModeFactory;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFaceDetectModeFactory;-><init>(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;Ljavax/inject/Provider;)V

    .line 6139
    iput-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideFaceDetectModeProvider:Ljavax/inject/Provider;

    .line 6142
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->oneCameraSettingsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6145
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$14000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideCameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 12043
    new-instance v3, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFlashSettingFactory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFlashSettingFactory;-><init>(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6143
    iput-object v3, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideFlashSettingProvider:Ljavax/inject/Provider;

    .line 6148
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->oneCameraSettingsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

    .line 13026
    new-instance v1, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideHdrPlusModeFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideHdrPlusModeFactory;-><init>(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;)V

    .line 6149
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideHdrPlusModeProvider:Ljavax/inject/Provider;

    .line 6151
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->oneCameraDependenciesModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62H35E1IMSP35DPHMIPBJ9LNM8TBCCKTG____:Lcom/google/android/gms/internal/zzahv;

    .line 14025
    new-instance v1, Lcom/android/camera/one/OneCameraDependenciesModule_ProvideBurstFacadeFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/OneCameraDependenciesModule_ProvideBurstFacadeFactory;-><init>(Lcom/google/android/gms/internal/zzahv;)V

    .line 6152
    iput-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideBurstFacadeProvider:Ljavax/inject/Provider;

    .line 5109
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;Lcom/google/android/gms/internal/zzahv;Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;Lcom/android/camera/one/v2/util/PictureConfigurationModule;B)V
    .locals 0

    .prologue
    .line 5067
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;Lcom/google/android/gms/internal/zzahv;Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;Lcom/android/camera/one/v2/util/PictureConfigurationModule;)V

    return-void
.end method

.method static synthetic access$16000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->providePictureConfigurationProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$16100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideViewfinderSurfaceFutureProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$16200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideViewfinderSizeProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$16300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideCameraDeviceFutureProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$16500(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideCameraCharacteristicsProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$16800(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideZoomProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$16900(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideHdrSceneModeProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideFaceDetectModeProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$17100(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideFlashSettingProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$17200(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideHdrPlusModeProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$17300(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;->provideBurstFacadeProvider:Ljavax/inject/Provider;

    return-object v0
.end method


# virtual methods
.method public final angler$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FA9GNEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT4MQOB7CLBN4QBKCLP4QRR4ELM6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNL4PBGE9NM6PBJEDKMSPQAE1IMEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNKSPBOELPJ4C1H6KI42RJ7DHIN4EO_(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 8

    .prologue
    .line 5240
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V

    return-object v0
.end method

.method public final anglerTuning$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQ6E9GMQPA1DHM6UOR1EHNN4JBFCHQMOPBJ4H662SJ7CL0MSP2IC5RKCSJ1DLIK2R3CDTHM2T3FE96MUP3LDHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5T662SJ7CL4MQOB7CL96AOB4CLP4QRR4ELM6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNL4OBN95MM2PR5A9IM2P35E96MUP3LDHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5T96AS3IDTHMASRJD5N6EIBDC5JMALRID5Q6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT570PB795MM2PR5A9IM2P35E96MUP3LDHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFEDMM2SJKDLIN8PBID5N6EBQJDLGN4T2DCLQ6ASJ9DPJKQRR4ELM6ASP4ADMM2SJK9LIN8PBID5N6EJ3FDTO4QRR4ELM6AEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM6RRECPKMEBQ5F1O6ASJ9DLIMST31DGI42RJ7DHIN4L3LDPKMSPPR(Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 9

    .prologue
    .line 5331
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerTuningImpl;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$AnglerTuningImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V

    return-object v0
.end method

.method public final bullhead$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FA9GNEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT4MQOB7CLBN4QBKCLP4QRR4ELM6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNL4PBGE9NM6PBJEDKMSPQAE1IMEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNKSPBOELPJ4C1H6KI44TBCDHK6AOB47C______(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 8

    .prologue
    .line 5210
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V

    return-object v0
.end method

.method public final bullheadNoZsl$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FA9GNEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT4MQOB7CLBN4QBKCLP4QRR4ELM6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNL4PBGE9NM6PBJEDKMSPQAE1IMEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNKSPBOELPJ4C1H6KI44TBCDHK6AOB49PNLKSRC7C______(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 8

    .prologue
    .line 5225
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadNoZslImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadNoZslImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V

    return-object v0
.end method

.method public final bullheadTuning$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQ6E9GMQPA1DHM6UOR1EHNN4JBFCHQMOPBJ4H662SJ7CL0MSP2IC5RKCSJ1DLIK2R3CDTHM2T3FE96MUP3LDHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5T662SJ7CL4MQOB7CL96AOB4CLP4QRR4ELM6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNL4OBN95MM2PR5A9IM2P35E96MUP3LDHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5T96AS3IDTHMASRJD5N6EIBDC5JMALRID5Q6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT570PB795MM2PR5A9IM2P35E96MUP3LDHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFEDMM2SJKDLIN8PBID5N6EBQJDLGN4T2DCLQ6ASJ9DPJKQRR4ELM6ASP4ADMM2SJK9LIN8PBID5N6EJ3FDTO4QRR4ELM6AEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM6RRECPKMEBQ5F1O6ASJ9DLIMST31DGI44TBCDHK6AOB4AHQMSQBECSTG____(Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 9

    .prologue
    .line 5314
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadTuningImpl;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$BullheadTuningImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V

    return-object v0
.end method

.method public final legacyJpeg$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNL6T31DPI62SJ44H66APR1CDSKKS35CSTG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 2

    .prologue
    .line 5157
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$LegacyJpegImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$LegacyJpegImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;B)V

    return-object v0
.end method

.method public final limitedJpeg$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNL6T31DPI62SJ44H66IRB9EHIM8IJGCLJJM___(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 2

    .prologue
    .line 5162
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$LimitedJpegImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$LimitedJpegImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;B)V

    return-object v0
.end method

.method public final nexus2016ZslHdr$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FA9GNEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT4MQOB7CLBN4QBKCLP4QRR4ELM6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNL4PBGE9NM6PBJEDKMSPQAE1IMEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNKSPBOELPJ4C1H6OI5KSRC91I74K3CELPJM___(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 8

    .prologue
    .line 5255
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslHdrPlusImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslHdrPlusImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V

    return-object v0
.end method

.method public final nexus2016ZslHdrTuning$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FA9GNEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQICLO74RR3CLPN6QBECT4MQOB7CLBN4QBKCLP4QRR4ELM6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNL4PBGE9NM6PBJEDKMSPQAE1IMEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNKAU3GCLP6IRB5DPQ62R14B9PMOI34E986OTBJAHQMSQBECSTG____(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 8

    .prologue
    .line 5347
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslHdrPlusTuningImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslHdrPlusTuningImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V

    return-object v0
.end method

.method public final nexus6HdrPlusAuto$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FA9GNEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNKSPBOELPJC92ECLS7ASPM91I74K3CELPK2TBKDTBMIT38ADNMCT3NC5P6AIJGCLJJM___(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 6

    .prologue
    .line 5185
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6HdrPlusAutoWithSoftwareJpegImpl;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6HdrPlusAutoWithSoftwareJpegImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V

    return-object v0
.end method

.method public final nexus6HdrPlusAutoNoZsl$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FA9GNEIBDC5JMAKJ5C5I6ASIDDTI7AR357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2USRDC5P78RB5EHIN4QBECSNL6RB1E9Q4QPBKCLP6IRJ79LNM8TBCCLPI8KRDC5P78JB5EHIN4QBECT66URRG9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNKSPBOELPJC92ECLS7ASPM91I74K3CELPK2TBKDTBMIT38ADNMCT3NC5P6AIJGCLJKSRQQEDM3M___(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 6

    .prologue
    .line 5194
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6HdrPlusAutoWithSoftwareJpegNoZslImpl;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6HdrPlusAutoWithSoftwareJpegNoZslImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$SmartMeteringLoopModule;B)V

    return-object v0
.end method

.method public final nexus6ZslYuv$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNKSPBOELPJC92ECLS7ASPMB9PMOMBLEP9MUPJKETGN4PAAE1IMEEO_(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 2

    .prologue
    .line 5200
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$Nexus6ZslYuvSoftwareJpegImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;B)V

    return-object v0
.end method

.method public final zslYuvReprocessing$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FA9IN0SJFCDIN6SR9DPJKIRB1CTILESJ9EHIN4JBFCHQMOP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UKJ5E1P6UOR5EDPMIRJ799O6APQ9DLGMEPAICLGM8PBI9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNL6T31DPI62SJ44HD76R2PELR54PBGE9NM6PBJEDKMSPPR(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 6

    .prologue
    .line 5176
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvReprocessingImpl;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvReprocessingImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;Lcom/android/camera/one/v2/imagemanagement/ReprocessingImageWriterModule;Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;B)V

    return-object v0
.end method

.method public final zslYuvSoftwareJpeg$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BQCC5P6EPA9DLGMEPAICLGM8PBI9LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFCDNMSPJ9CSNL6T31DPI62SJ44HD76R2PELR56RR6EHRM2SJ599O6APPR(Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 2

    .prologue
    .line 5168
    new-instance v0, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl$ZslYuvSoftwareJpegImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$OneCameraFactoryImpl;Lcom/android/camera/one/v2/imagemanagement/LargeImageReaderModule;B)V

    return-object v0
.end method
