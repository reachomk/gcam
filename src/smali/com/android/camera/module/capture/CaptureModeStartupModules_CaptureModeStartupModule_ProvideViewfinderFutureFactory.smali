.class public final Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideViewfinderFutureFactory;
.super Ljava/lang/Object;
.source "CaptureModeStartupModules_CaptureModeStartupModule_ProvideViewfinderFutureFactory.java"

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
.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8DGN0T3LE9IKQRR4CL9N8OBIEHQN0JBFCHQMOPBJ4H1M2S3KELP6AJBFCHIL6T31E9Q7AS2DDTI7AR357C______:Lcom/android/camera/util/activity/ActivityUtilModule;

.field private final viewfinderFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/util/activity/ActivityUtilModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/activity/ActivityUtilModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideViewfinderFutureFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8DGN0T3LE9IKQRR4CL9N8OBIEHQN0JBFCHQMOPBJ4H1M2S3KELP6AJBFCHIL6T31E9Q7AS2DDTI7AR357C______:Lcom/android/camera/util/activity/ActivityUtilModule;

    .line 24
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideViewfinderFutureFactory;->viewfinderFutureProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 11
    .line 1029
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideViewfinderFutureFactory;->viewfinderFutureProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lcom/android/camera/util/activity/ActivityUtilModule;->provideViewfinderFuture(Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1029
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    return-object v0
.end method
