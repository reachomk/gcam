.class public final Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;
.super Ljava/lang/Object;
.source "PermissionCheckerModule_ProvidePermissionCheckerFactory.java"

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
.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
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

.field private final permissionsCheckerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/permissions/PermissionsCheckerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/permissions/PermissionsCheckerImpl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;->permissionsCheckerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;->lifecycleProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 35
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 11
    .line 1039
    iget-object v3, p0, Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;->permissionsCheckerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;->lifecycleProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v1, p0, Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v2, p0, Lcom/android/camera/util/permissions/PermissionCheckerModule_ProvidePermissionCheckerFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/ApiHelper;

    .line 1040
    invoke-static {v3, v0, v1, v2}, Lcom/android/camera/util/permissions/NoOpPermissionsChecker;->providePermissionChecker(Ljavax/inject/Provider;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/util/ApiHelper;)Lcom/android/camera/util/permissions/PermissionsChecker;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1039
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/permissions/PermissionsChecker;

    .line 11
    return-object v0
.end method
