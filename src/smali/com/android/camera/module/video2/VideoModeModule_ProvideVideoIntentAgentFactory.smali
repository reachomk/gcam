.class public final Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentAgentFactory;
.super Ljava/lang/Object;
.source "VideoModeModule_ProvideVideoIntentAgentFactory.java"

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
    iput-object p1, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentAgentFactory;->moduleConfigProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentAgentFactory;->moduleProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1029
    iget-object v0, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentAgentFactory;->moduleConfigProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DetailsDialog;

    iget-object v1, p0, Lcom/android/camera/module/video2/VideoModeModule_ProvideVideoIntentAgentFactory;->moduleProvider:Ljavax/inject/Provider;

    .line 1213
    new-instance v2, Lcom/android/camera/module/SimpleModuleAgent;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/SimpleModuleAgent;-><init>(Lcom/android/camera/ui/DetailsDialog;Ljavax/inject/Provider;)V

    .line 1030
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1029
    invoke-static {v2, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    .line 11
    return-object v0
.end method
