.class public final Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule_ProvideGlobalTicketPoolFactory;
.super Ljava/lang/Object;
.source "GlobalMemoryTicketPoolModule_ProvideGlobalTicketPoolFactory.java"

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
.field private final appLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final gservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule_ProvideGlobalTicketPoolFactory;->module:Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;

    .line 27
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule_ProvideGlobalTicketPoolFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule_ProvideGlobalTicketPoolFactory;->appLifetimeProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 11
    .line 1034
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule_ProvideGlobalTicketPoolFactory;->module:Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule_ProvideGlobalTicketPoolFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule_ProvideGlobalTicketPoolFactory;->appLifetimeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/lifetime/AppLifetime;

    .line 2027
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getImageReaderTicketLimit()I

    move-result v0

    .line 2028
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;-><init>(I)V

    .line 2030
    invoke-interface {v1}, Lcom/android/camera/util/lifetime/AppLifetime;->getAppLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v1

    .line 2031
    invoke-interface {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v3

    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule$1;

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/imagemanagement/GlobalMemoryTicketPoolModule$1;-><init>(I)V

    .line 2041
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2031
    invoke-interface {v3, v4, v0}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 2030
    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1035
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1034
    invoke-static {v2, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 11
    return-object v0
.end method
