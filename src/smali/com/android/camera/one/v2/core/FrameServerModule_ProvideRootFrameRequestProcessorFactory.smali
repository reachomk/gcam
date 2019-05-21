.class public final Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;
.super Ljava/lang/Object;
.source "FrameServerModule_ProvideRootFrameRequestProcessorFactory.java"

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
.field private final cameraCaptureSessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frpFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final lifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->frpFactoryProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->cameraCaptureSessionProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->handlerFactoryProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 12
    .line 1040
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->frpFactoryProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;

    iget-object v1, p0, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v2, p0, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->cameraCaptureSessionProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p0, Lcom/android/camera/one/v2/core/FrameServerModule_ProvideRootFrameRequestProcessorFactory;->handlerFactoryProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/async/HandlerFactory;

    .line 1055
    new-instance v4, Lcom/android/camera/one/v2/core/FrameServerModule$2;

    invoke-direct {v4, v3, v1, v0}, Lcom/android/camera/one/v2/core/FrameServerModule$2;-><init>(Lcom/google/android/apps/camera/async/HandlerFactory;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/core/FrameRequestProcessorFactory;)V

    invoke-static {v2, v4}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1041
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1040
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 12
    return-object v0
.end method
