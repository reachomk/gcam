.class public final Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;
.super Ljava/lang/Object;
.source "OrientationManagerImpl_Factory.java"

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
.field private final activityOrientationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/RequestedOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceOrientationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/deviceorientation/DeviceOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private final logFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final windowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/RequestedOrientation;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/deviceorientation/DeviceOrientation;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/WindowManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;->activityOrientationProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;->deviceOrientationProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 12
    .line 1044
    new-instance v0, Lcom/android/camera/util/layout/OrientationManagerImpl;

    iget-object v1, p0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;->activityOrientationProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/activity/RequestedOrientation;

    iget-object v2, p0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;->deviceOrientationProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    iget-object v4, p0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/camera/util/layout/OrientationManagerImpl_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/debug/Logger$Factory;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/util/layout/OrientationManagerImpl;-><init>(Lcom/android/camera/util/activity/RequestedOrientation;Landroid/content/ContentResolver;Lcom/android/camera/util/deviceorientation/DeviceOrientation;Landroid/view/WindowManager;Lcom/android/camera/debug/Logger$Factory;)V

    .line 12
    return-object v0
.end method
