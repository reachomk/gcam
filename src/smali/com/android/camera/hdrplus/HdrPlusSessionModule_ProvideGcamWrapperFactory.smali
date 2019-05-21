.class public final Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;
.super Ljava/lang/Object;
.source "HdrPlusSessionModule_ProvideGcamWrapperFactory.java"

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
.field private final aeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraCharacteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final externalCacheFolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

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

.field private final gcamRawImageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusState;",
            ">;"
        }
    .end annotation
.end field

.field private final locationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final pictureConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final processingServiceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final whiteBalanceSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusState;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/googlex/gcam/Gcam;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->hdrPlusProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p2, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->cameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p3, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p4, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p5, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->gcamProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p6, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p7, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->externalCacheFolderProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p8, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p9, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->locationProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p10, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->gcamRawImageSaverProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p11, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->cameraLifetimeProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p12, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->whiteBalanceSettingProvider:Ljavax/inject/Provider;

    .line 83
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusState;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/googlex/gcam/Gcam;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 13

    .prologue
    .line 19
    .line 1087
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->hdrPlusProvider:Ljavax/inject/Provider;

    .line 1089
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->cameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 1090
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 1091
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 1092
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/util/PictureConfiguration;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->gcamProvider:Ljavax/inject/Provider;

    .line 1093
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/gcam/Gcam;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 1094
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/processing/ProcessingServiceManager;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->externalCacheFolderProvider:Ljavax/inject/Provider;

    .line 1095
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 1096
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/util/ApiHelper;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->locationProvider:Ljavax/inject/Provider;

    .line 1097
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/location/LocationProvider;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->gcamRawImageSaverProvider:Ljavax/inject/Provider;

    .line 1098
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->cameraLifetimeProvider:Ljavax/inject/Provider;

    .line 1099
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionModule_ProvideGcamWrapperFactory;->whiteBalanceSettingProvider:Ljavax/inject/Provider;

    .line 1100
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/settings/WhiteBalanceSetting;

    .line 2052
    new-instance v0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;

    .line 2055
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getEvCompProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v3

    invoke-direct/range {v0 .. v12}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;-><init>(Lcom/android/camera/hdrplus/HdrPlusState;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/util/PictureConfiguration;Lcom/google/googlex/gcam/Gcam;Lcom/android/camera/processing/ProcessingServiceManager;Ljava/io/File;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/location/LocationProvider;Lcom/android/camera/one/v2/imagesaver/dng/GcamDngImageWriter;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/settings/WhiteBalanceSetting;)V

    .line 1088
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1087
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hdrplus/HdrPlusSession;

    .line 19
    return-object v0
.end method
