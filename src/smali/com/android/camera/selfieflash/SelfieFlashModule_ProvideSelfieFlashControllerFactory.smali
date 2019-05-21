.class public final Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerFactory;
.super Ljava/lang/Object;
.source "SelfieFlashModule_ProvideSelfieFlashControllerFactory.java"

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

.field private final module:Lcom/android/camera/selfieflash/SelfieFlashModule;

.field private final selfieFlashControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/selfieflash/SelfieFlashModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/selfieflash/SelfieFlashModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerFactory;->module:Lcom/android/camera/selfieflash/SelfieFlashModule;

    .line 25
    iput-object p2, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerFactory;->selfieFlashControllerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerFactory;->flagsProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1032
    iget-object v1, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerFactory;->selfieFlashControllerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashModule_ProvideSelfieFlashControllerFactory;->flagsProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/flags/Flags;

    invoke-static {v1, v0}, Lcom/android/camera/selfieflash/SelfieFlashModule;->provideSelfieFlashController(Ljavax/inject/Provider;Lcom/android/camera/util/flags/Flags;)Lcom/android/camera/selfieflash/SelfieFlashController;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1032
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/selfieflash/SelfieFlashController;

    .line 9
    return-object v0
.end method
