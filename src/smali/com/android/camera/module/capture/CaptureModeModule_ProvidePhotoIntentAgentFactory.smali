.class public final Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentAgentFactory;
.super Ljava/lang/Object;
.source "CaptureModeModule_ProvidePhotoIntentAgentFactory.java"

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
.field private final moduleConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final moduleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/DetailsDialog;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/module/ModuleController;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentAgentFactory;->moduleConfigProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentAgentFactory;->moduleProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 11
    .line 1029
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentAgentFactory;->moduleConfigProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DetailsDialog;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeModule_ProvidePhotoIntentAgentFactory;->moduleProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->providePhotoIntentAgent$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJBFCHQMOPADC5N62PR5E8I4QRR4ELM6AGRFDPJ6IPPR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRDDTI7AR355T6MUP3LDHIKQOBEC5JMASH49LNM8TBCCL0MEPBEEGTG____(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)Lcom/android/camera/module/ModuleManager$ModuleAgent;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1029
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    .line 11
    return-object v0
.end method
