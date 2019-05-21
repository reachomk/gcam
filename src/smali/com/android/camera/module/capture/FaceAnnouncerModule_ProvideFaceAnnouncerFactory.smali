.class public final Lcom/android/camera/module/capture/FaceAnnouncerModule_ProvideFaceAnnouncerFactory;
.super Ljava/lang/Object;
.source "FaceAnnouncerModule_ProvideFaceAnnouncerFactory.java"

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
.field private final cameraUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/util/time/UtcClock;",
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

.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8PGM6PA1DPN6UTBECDIN4JBFCHQMOP9R:Lcom/android/camera/util/lifecycle/Lifecycles;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/lifecycle/Lifecycles;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/lifecycle/Lifecycles;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/util/time/UtcClock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/module/capture/FaceAnnouncerModule_ProvideFaceAnnouncerFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNM6OBGEHQN4P9F8PGM6PA1DPN6UTBECDIN4JBFCHQMOP9R:Lcom/android/camera/util/lifecycle/Lifecycles;

    .line 31
    iput-object p2, p0, Lcom/android/camera/module/capture/FaceAnnouncerModule_ProvideFaceAnnouncerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/camera/module/capture/FaceAnnouncerModule_ProvideFaceAnnouncerFactory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/android/camera/module/capture/FaceAnnouncerModule_ProvideFaceAnnouncerFactory;->clockProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 12
    .line 1040
    iget-object v0, p0, Lcom/android/camera/module/capture/FaceAnnouncerModule_ProvideFaceAnnouncerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/module/capture/FaceAnnouncerModule_ProvideFaceAnnouncerFactory;->cameraUiProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/views/CameraUi;

    iget-object v2, p0, Lcom/android/camera/module/capture/FaceAnnouncerModule_ProvideFaceAnnouncerFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/util/time/UtcClock;

    .line 1041
    invoke-static {v0, v1, v2}, Lcom/android/camera/util/lifecycle/Lifecycles;->provideFaceAnnouncer(Landroid/content/Context;Lcom/android/camera/ui/views/CameraUi;Lcom/google/android/apps/camera/util/time/UtcClock;)Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1040
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;

    .line 12
    return-object v0
.end method
