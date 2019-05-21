.class public final Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;
.super Ljava/lang/Object;
.source "VideoTorchStatechartInitializer.java"

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

.field private final flashProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final resources:Landroid/content/res/Resources;

.field private final videoTorchStatechart:Lcom/android/camera/ui/controller/VideoTorchStatechart;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/VideoTorchStatechart;Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Landroid/content/res/Resources;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->videoTorchStatechart:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    .line 27
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 29
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->flashProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 30
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->resources:Landroid/content/res/Resources;

    .line 31
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 7

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    const v1, 0x7f1100be

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->videoTorchStatechart:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    iget-object v3, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->flashProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    iget-object v4, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->resources:Landroid/content/res/Resources;

    const v5, 0x7f0a02af

    .line 40
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->resources:Landroid/content/res/Resources;

    const v6, 0x7f0a02ae

    .line 41
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9LGMIRIKD1P6AOB47D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ3AC5R62BRCC5N6EBQJEHP6IRJ77D66KOBMC4NMOOBECSNL6T3ID5N6EEP9AO______(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
