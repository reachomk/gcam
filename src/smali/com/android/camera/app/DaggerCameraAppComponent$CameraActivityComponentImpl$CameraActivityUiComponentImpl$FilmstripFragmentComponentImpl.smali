.class final Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCameraAppComponent.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripFragmentComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FilmstripFragmentComponentImpl"
.end annotation


# instance fields
.field private filmstripBadgeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripBadgeController;",
            ">;"
        }
    .end annotation
.end field

.field private filmstripBottomPanelControllerImplProvider:Ljavax/inject/Provider;

.field private filmstripControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripController;",
            ">;"
        }
    .end annotation
.end field

.field private filmstripDeleteControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripDeleteController;",
            ">;"
        }
    .end annotation
.end field

.field private filmstripFragmentImplMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripFragmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final filmstripFragmentModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS26E9GMERB5DPQ4QRR4ELM6AEO_:Lcom/android/camera/one/v2/preview/SimplePreviewModule;

.field private filmstripShortTallBottomBarBackgroundMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;",
            ">;"
        }
    .end annotation
.end field

.field private filmstripUiStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideCameraFilmstripUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideFilmstripBottomPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripBottomPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private providesFilmstripFragmentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripFragment;",
            ">;"
        }
    .end annotation
.end field

.field private providesLayoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private providesResourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;Lcom/android/camera/one/v2/preview/SimplePreviewModule;)V
    .locals 20

    .prologue
    .line 4888
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4889
    invoke-static/range {p2 .. p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/preview/SimplePreviewModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripFragmentModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS26E9GMERB5DPQ4QRR4ELM6AEO_:Lcom/android/camera/one/v2/preview/SimplePreviewModule;

    .line 5896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripFragmentModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS26E9GMERB5DPQ4QRR4ELM6AEO_:Lcom/android/camera/one/v2/preview/SimplePreviewModule;

    .line 6026
    new-instance v3, Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvidesLayoutInflaterFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvidesLayoutInflaterFactory;-><init>(Lcom/android/camera/one/v2/preview/SimplePreviewModule;)V

    .line 5897
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->providesLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 5899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripFragmentModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS26E9GMERB5DPQ4QRR4ELM6AEO_:Lcom/android/camera/one/v2/preview/SimplePreviewModule;

    .line 7024
    new-instance v3, Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvidesResourcesFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvidesResourcesFactory;-><init>(Lcom/android/camera/one/v2/preview/SimplePreviewModule;)V

    .line 5900
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->providesResourcesProvider:Ljavax/inject/Provider;

    .line 5902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripFragmentModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS26E9GMERB5DPQ4QRR4ELM6AEO_:Lcom/android/camera/one/v2/preview/SimplePreviewModule;

    .line 7026
    new-instance v3, Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvideCameraFilmstripUiFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvideCameraFilmstripUiFactory;-><init>(Lcom/android/camera/one/v2/preview/SimplePreviewModule;)V

    .line 5903
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->provideCameraFilmstripUiProvider:Ljavax/inject/Provider;

    .line 5906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5908
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$11400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->providesLayoutInflaterProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->providesResourcesProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->provideCameraFilmstripUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5912
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1600(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v7

    .line 7059
    new-instance v2, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5907
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripBottomPanelControllerImplProvider:Ljavax/inject/Provider;

    .line 5914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5917
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8HGMEPR5E91M2RB5E9GK2S3G8DNMQS3FDPIMST148DGMQPBIC50M6T39EPKN8UA3DTMN0RRECLN78IBDE1M28GR1DLIN4OA1CDQ6ITJ9EHSLAQA3DTMN0RRECLN78IBDE1M3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR6D5M6QSRKE9KN0BQ6D5M6QSRKE9KN0JBFCHQMOP9R(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripBottomPanelControllerImplProvider:Ljavax/inject/Provider;

    .line 8032
    new-instance v4, Lcom/android/camera/filmstrip/FilmstripModule_ProvideFilmstripBottomPanelControllerFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/filmstrip/FilmstripModule_ProvideFilmstripBottomPanelControllerFactory;-><init>(Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;Ljavax/inject/Provider;)V

    .line 5915
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->provideFilmstripBottomPanelControllerProvider:Ljavax/inject/Provider;

    .line 5919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->provideCameraFilmstripUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->providesResourcesProvider:Ljavax/inject/Provider;

    .line 9032
    new-instance v4, Lcom/android/camera/filmstrip/FilmstripBadgeController_Factory;

    invoke-direct {v4, v2, v3}, Lcom/android/camera/filmstrip/FilmstripBadgeController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5920
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripBadgeControllerProvider:Ljavax/inject/Provider;

    .line 5924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripFragmentModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS26E9GMERB5DPQ4QRR4ELM6AEO_:Lcom/android/camera/one/v2/preview/SimplePreviewModule;

    .line 10025
    new-instance v3, Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvidesFilmstripFragmentFactory;

    invoke-direct {v3, v2}, Lcom/android/camera/filmstrip/FilmstripFragmentModule_ProvidesFilmstripFragmentFactory;-><init>(Lcom/android/camera/one/v2/preview/SimplePreviewModule;)V

    .line 5925
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->providesFilmstripFragmentProvider:Ljavax/inject/Provider;

    .line 5928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->provideCameraFilmstripUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->providesResourcesProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5933
    invoke-static {v4}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    .line 10040
    new-instance v5, Lcom/android/camera/filmstrip/FilmstripDeleteController_Factory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/camera/filmstrip/FilmstripDeleteController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5929
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripDeleteControllerProvider:Ljavax/inject/Provider;

    .line 5935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->providesFilmstripFragmentProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->provideFilmstripBottomPanelControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripBadgeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripDeleteControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5942
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5943
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5944
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5945
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$13200(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5946
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6800(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5947
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5948
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$5900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->provideCameraFilmstripUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5950
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5951
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$11500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5952
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$9000(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5953
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5954
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v19

    .line 10149
    new-instance v2, Lcom/android/camera/filmstrip/FilmstripController_Factory;

    invoke-direct/range {v2 .. v19}, Lcom/android/camera/filmstrip/FilmstripController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5936
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripControllerProvider:Ljavax/inject/Provider;

    .line 5956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5958
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5960
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->provideFilmstripBottomPanelControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripBadgeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripDeleteControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->providesFilmstripFragmentProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->provideCameraFilmstripUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5967
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13400(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->providesResourcesProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5969
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$4900(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5970
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$11500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5971
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$6600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    .line 11120
    new-instance v2, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechartInitializer_Factory;

    invoke-direct/range {v2 .. v15}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechartInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5957
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripUiStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 5973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->provideFilmstripBottomPanelControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripBadgeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripDeleteControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5979
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5100(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5980
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    .line 5981
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->access$5300(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5982
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13700(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripUiStatechartInitializerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5984
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13500(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    .line 5986
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->access$13600(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    .line 12087
    new-instance v2, Lcom/android/camera/filmstrip/FilmstripFragmentImpl_MembersInjector;

    invoke-direct/range {v2 .. v13}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 5974
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripFragmentImplMembersInjector:Ldagger/MembersInjector;

    .line 5988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->this$2:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;->this$1:Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;

    iget-object v2, v2, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 5990
    invoke-static {v2}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$1900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 13021
    new-instance v3, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground_MembersInjector;

    invoke-direct {v3, v2}, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    .line 5989
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripShortTallBottomBarBackgroundMembersInjector:Ldagger/MembersInjector;

    .line 4891
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;Lcom/android/camera/one/v2/preview/SimplePreviewModule;B)V
    .locals 0

    .prologue
    .line 4858
    invoke-direct {p0, p1, p2}, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl;Lcom/android/camera/one/v2/preview/SimplePreviewModule;)V

    return-void
.end method


# virtual methods
.method public final inject(Lcom/android/camera/filmstrip/FilmstripFragmentImpl;)V
    .locals 1

    .prologue
    .line 4995
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripFragmentImplMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 4996
    return-void
.end method

.method public final inject(Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;)V
    .locals 1

    .prologue
    .line 5000
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$CameraActivityComponentImpl$CameraActivityUiComponentImpl$FilmstripFragmentComponentImpl;->filmstripShortTallBottomBarBackgroundMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 5001
    return-void
.end method
