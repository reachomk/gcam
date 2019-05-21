.class public final Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;
.super Ljava/lang/Object;
.source "CountdownStatechartInitializer.java"

# interfaces
.implements Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;


# instance fields
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

.field private final countdownStatechart:Lcom/android/camera/ui/controller/CountdownStatechart;

.field private evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private final isCountingDown$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CountdownStatechart;Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/CountdownStatechart;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;->countdownStatechart:Lcom/android/camera/ui/controller/CountdownStatechart;

    .line 29
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;->isCountingDown$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 31
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 32
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    .line 37
    const v1, 0x7f1100c4

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    .line 39
    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;->countdownStatechart:Lcom/android/camera/ui/controller/CountdownStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;->isCountingDown$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    iget-object v3, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/ui/controller/CountdownStatechart;->initialize$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1K6UT3FAPKM8PBF9LNM8PAJETKN8OR8APKMATPR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR5EPHMURBG5T2NCGRFDLO5CQB5ET1MURJKE9NMOR35E8TIILG_(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V

    .line 40
    return-void
.end method
