.class public final Lcom/android/camera/activity/gca/GcaActivityModule;
.super Ljava/lang/Object;
.source "GcaActivityModule.java"


# instance fields
.field private final activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

.field private final activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private final gcaActivity:Lcom/android/camera/activity/gca/GcaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/activity/gca/GcaActivity;Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;Lcom/android/camera/util/lifetime/ActivityLifetime;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->gcaActivity:Lcom/android/camera/activity/gca/GcaActivity;

    .line 31
    iput-object p3, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 32
    iput-object p2, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 33
    return-void
.end method


# virtual methods
.method public final provideActivityLifecycle()Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    return-object v0
.end method

.method public final provideActivityLifetime()Lcom/android/camera/util/lifetime/ActivityLifetime;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    return-object v0
.end method

.method public final provideGcaActivity()Lcom/android/camera/activity/gca/GcaActivity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->gcaActivity:Lcom/android/camera/activity/gca/GcaActivity;

    return-object v0
.end method

.method public final provideIntentHandler()Lcom/android/camera/util/activity/IntentHandler;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/android/camera/util/activity/IntentHandler;

    iget-object v1, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->gcaActivity:Lcom/android/camera/activity/gca/GcaActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/util/activity/IntentHandler;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final provideIntentStarter()Lcom/android/camera/util/activity/IntentStarter;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/android/camera/util/activity/IntentHandler;

    iget-object v1, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->gcaActivity:Lcom/android/camera/activity/gca/GcaActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/util/activity/IntentHandler;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final provideLifecycle()Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    return-object v0
.end method

.method public final providePermissionsRequestor()Lcom/android/camera/util/activity/PermissionsRequestor;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/android/camera/util/activity/PermissionsRequestor;

    iget-object v1, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->gcaActivity:Lcom/android/camera/activity/gca/GcaActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/util/activity/PermissionsRequestor;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final provideRequestedOrientation()Lcom/android/camera/util/activity/RequestedOrientation;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/android/camera/util/activity/RequestedOrientation;

    iget-object v1, p0, Lcom/android/camera/activity/gca/GcaActivityModule;->gcaActivity:Lcom/android/camera/activity/gca/GcaActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/util/activity/RequestedOrientation;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
