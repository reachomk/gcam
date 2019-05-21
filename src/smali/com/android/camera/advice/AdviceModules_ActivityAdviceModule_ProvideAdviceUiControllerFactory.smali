.class public final Lcom/android/camera/advice/AdviceModules_ActivityAdviceModule_ProvideAdviceUiControllerFactory;
.super Ljava/lang/Object;
.source "AdviceModules_ActivityAdviceModule_ProvideAdviceUiControllerFactory.java"

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
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final flagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/advice/AdviceModules_ActivityAdviceModule_ProvideAdviceUiControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/android/camera/advice/AdviceModules_ActivityAdviceModule_ProvideAdviceUiControllerFactory;->flagsProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/camera/advice/AdviceModules_ActivityAdviceModule_ProvideAdviceUiControllerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 31
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 12
    .line 1035
    iget-object v0, p0, Lcom/android/camera/advice/AdviceModules_ActivityAdviceModule_ProvideAdviceUiControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 1037
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/advice/AdviceModules_ActivityAdviceModule_ProvideAdviceUiControllerFactory;->flagsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/flags/Flags;

    iget-object v2, p0, Lcom/android/camera/advice/AdviceModules_ActivityAdviceModule_ProvideAdviceUiControllerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/MainThread;

    .line 1036
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideAdviceUiController(Landroid/content/Context;Lcom/android/camera/util/flags/Flags;Lcom/google/android/apps/camera/async/MainThread;)Lcom/google/android/apps/camera/advice/AdviceUiController;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1035
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/advice/AdviceUiController;

    .line 12
    return-object v0
.end method
