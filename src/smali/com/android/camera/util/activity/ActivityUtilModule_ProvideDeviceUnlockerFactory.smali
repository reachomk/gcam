.class public final Lcom/android/camera/util/activity/ActivityUtilModule_ProvideDeviceUnlockerFactory;
.super Ljava/lang/Object;
.source "ActivityUtilModule_ProvideDeviceUnlockerFactory.java"

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
.field private final callingActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/gca/GcaActivity;",
            ">;"
        }
    .end annotation
.end field

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

.field private final intentLauncherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentLauncher;",
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
            "Lcom/android/camera/util/activity/IntentLauncher;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/gca/GcaActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideDeviceUnlockerFactory;->intentLauncherProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideDeviceUnlockerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideDeviceUnlockerFactory;->callingActivityProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 10
    .line 1033
    iget-object v0, p0, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideDeviceUnlockerFactory;->intentLauncherProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/activity/IntentLauncher;

    iget-object v1, p0, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideDeviceUnlockerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/util/activity/ActivityUtilModule_ProvideDeviceUnlockerFactory;->callingActivityProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/activity/gca/GcaActivity;

    .line 1053
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/camera/activity/main/CameraActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1054
    const-string v1, "open_filmstrip"

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1055
    new-instance v1, Lcom/android/camera/util/activity/DeviceUnlocker;

    invoke-direct {v1, v0, v3, v2}, Lcom/android/camera/util/activity/DeviceUnlocker;-><init>(Lcom/android/camera/util/activity/IntentLauncher;Landroid/content/Intent;Lcom/android/camera/activity/gca/GcaActivity;)V

    .line 1034
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1033
    invoke-static {v1, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/activity/DeviceUnlocker;

    .line 10
    return-object v0
.end method
