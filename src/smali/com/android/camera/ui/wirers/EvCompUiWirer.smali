.class public final Lcom/android/camera/ui/wirers/EvCompUiWirer;
.super Ljava/lang/Object;
.source "EvCompUiWirer.java"

# interfaces
.implements Lcom/android/camera/ui/wirers/UiWirer;


# instance fields
.field private final activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private final aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

.field private final cameraActivityUi:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final evCompScrollingProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompViewController;Ljavax/inject/Provider;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/util/lifetime/ActivityLifetime;Landroid/content/Context;Lcom/google/android/apps/camera/async/MainThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 46
    iput-object p2, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 48
    iput-object p4, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->evCompScrollingProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 49
    iput-object p5, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 50
    iput-object p6, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->context:Landroid/content/Context;

    .line 51
    iput-object p7, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 52
    return-void
.end method

.method static synthetic access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRND5P6ASJJ5T2NCGRFDLO5AQAND5P6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB58DNMST3IDTM6OPBI7C______(Lcom/android/camera/ui/wirers/EvCompUiWirer;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/wirers/EvCompUiWirer;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    return-object v0
.end method


# virtual methods
.method public final wire()V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->cameraActivityUi:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    .line 59
    const v1, 0x7f1100bf

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/evcomp/EvCompView;

    .line 60
    iget-object v1, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    iget-object v2, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getEvCompProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->evCompScrollingProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUPBMCDNMQS1F8LR46RRDE1B6IPBN7D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R55B0____(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/content/Context;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;)V

    .line 1067
    iget-object v0, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->evCompScrollingProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    new-instance v2, Lcom/android/camera/ui/wirers/EvCompUiWirer$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/wirers/EvCompUiWirer$1;-><init>(Lcom/android/camera/ui/wirers/EvCompUiWirer;)V

    .line 1075
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1068
    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1079
    iget-object v0, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 1080
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getAeLockProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ui/wirers/EvCompUiWirer$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/wirers/EvCompUiWirer$2;-><init>(Lcom/android/camera/ui/wirers/EvCompUiWirer;)V

    iget-object v3, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 64
    return-void
.end method
