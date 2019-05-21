.class public final Lcom/android/camera/async/ExecutorModules_AndroidActivityExecutorsModule_ProvideBatchedUiExecutorFactory;
.super Ljava/lang/Object;
.source "ExecutorModules_AndroidActivityExecutorsModule_ProvideBatchedUiExecutorFactory.java"

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
.field private final mainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;"
        }
    .end annotation
.end field

.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21CDQ6ITJ9EHSKAU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/audio/AudioModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/audio/AudioModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/audio/AudioModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/async/ExecutorModules_AndroidActivityExecutorsModule_ProvideBatchedUiExecutorFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21CDQ6ITJ9EHSKAU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/audio/AudioModule;

    .line 23
    iput-object p2, p0, Lcom/android/camera/async/ExecutorModules_AndroidActivityExecutorsModule_ProvideBatchedUiExecutorFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1028
    iget-object v0, p0, Lcom/android/camera/async/ExecutorModules_AndroidActivityExecutorsModule_ProvideBatchedUiExecutorFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1029
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/MainThread;

    invoke-static {v0}, Lcom/android/camera/audio/AudioModule;->provideBatchedUiExecutor(Lcom/google/android/apps/camera/async/MainThread;)Lcom/google/android/apps/camera/async/BatchedUiExecutor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1028
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/BatchedUiExecutor;

    .line 10
    return-object v0
.end method
