.class public final Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;
.super Ljava/lang/Object;
.source "PermissionsCheckerImpl_Factory.java"

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
.field private final activityFinishWithReasonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ActivityFinishWithReason;",
            ">;"
        }
    .end annotation
.end field

.field private final activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final intentStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/KeyguardManager;",
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

.field private final permissionsRequestorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/PermissionsRequestor;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/ActivityFinishWithReason;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/PermissionsRequestor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/activity/IntentStarter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->activityProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->keyguardManagerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->permissionsRequestorProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p7, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->intentStarterProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p8, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 58
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 15
    .line 1062
    new-instance v0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    iget-object v1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->activityProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->activityFinishWithReasonProvider:Ljavax/inject/Provider;

    .line 1064
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/activity/ActivityFinishWithReason;

    iget-object v3, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/settings/SettingsManager;

    iget-object v4, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->keyguardManagerProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iget-object v5, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->permissionsRequestorProvider:Ljavax/inject/Provider;

    .line 1067
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/activity/PermissionsRequestor;

    iget-object v6, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1068
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->intentStarterProvider:Ljavax/inject/Provider;

    .line 1069
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/util/activity/IntentStarter;

    iget-object v8, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1070
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;-><init>(Landroid/app/Activity;Lcom/android/camera/util/activity/ActivityFinishWithReason;Lcom/android/camera/settings/SettingsManager;Landroid/app/KeyguardManager;Lcom/android/camera/util/activity/PermissionsRequestor;Landroid/content/res/Resources;Lcom/android/camera/util/activity/IntentStarter;Lcom/google/android/apps/camera/async/MainThread;)V

    .line 15
    return-object v0
.end method
