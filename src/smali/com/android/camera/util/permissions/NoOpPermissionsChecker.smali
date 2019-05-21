.class public Lcom/android/camera/util/permissions/NoOpPermissionsChecker;
.super Ljava/lang/Object;
.source "NoOpPermissionsChecker.java"

# interfaces
.implements Lcom/android/camera/util/permissions/PermissionsChecker;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static providePermissionChecker(Ljavax/inject/Provider;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/util/ApiHelper;)Lcom/android/camera/util/permissions/PermissionsChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/permissions/PermissionsCheckerImpl;",
            ">;",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/util/ApiHelper;",
            ")",
            "Lcom/android/camera/util/permissions/PermissionsChecker;"
        }
    .end annotation

    .prologue
    .line 1025
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isMOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    .line 1028
    invoke-static {p2, p1, v0}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TIILG_(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 1031
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/util/permissions/NoOpPermissionsChecker;

    invoke-direct {v0}, Lcom/android/camera/util/permissions/NoOpPermissionsChecker;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final checkCriticalPermissions()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
