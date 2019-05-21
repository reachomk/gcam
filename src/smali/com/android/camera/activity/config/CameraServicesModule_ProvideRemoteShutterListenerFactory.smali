.class public final Lcom/android/camera/activity/config/CameraServicesModule_ProvideRemoteShutterListenerFactory;
.super Ljava/lang/Object;
.source "CameraServicesModule_ProvideRemoteShutterListenerFactory.java"

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
.field private final activityLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/activity/config/CameraServicesModule_ProvideRemoteShutterListenerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/camera/activity/config/CameraServicesModule_ProvideRemoteShutterListenerFactory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 11
    .line 1028
    iget-object v0, p0, Lcom/android/camera/activity/config/CameraServicesModule_ProvideRemoteShutterListenerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/activity/config/CameraServicesModule_ProvideRemoteShutterListenerFactory;->activityLifetimeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 1029
    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideRemoteShutterListener(Landroid/content/Context;Lcom/android/camera/util/lifetime/ActivityLifetime;)Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1028
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/remote/RemoteShutterListener;

    .line 11
    return-object v0
.end method
