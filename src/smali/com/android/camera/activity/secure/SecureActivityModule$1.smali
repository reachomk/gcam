.class final Lcom/android/camera/activity/secure/SecureActivityModule$1;
.super Ljava/lang/Object;
.source "SecureActivityModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/activity/secure/SecureActivityModule;->provideSecureActivityScreenOffBehavior(Lcom/google/android/apps/camera/async/MainThread;Landroid/app/Activity;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Ljavax/inject/Provider;)Lcom/android/camera/behavior/Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

.field private synthetic val$mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private synthetic val$screenOffBehavior:Ljavax/inject/Provider;


# direct methods
.method constructor <init>(Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/activity/secure/SecureActivityModule$1;->val$screenOffBehavior:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/camera/activity/secure/SecureActivityModule$1;->val$mainThread:Lcom/google/android/apps/camera/async/MainThread;

    iput-object p3, p0, Lcom/android/camera/activity/secure/SecureActivityModule$1;->val$activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/activity/secure/SecureActivityModule$1;->val$screenOffBehavior:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/secure/FinishActivityOnScreenOffBehavior;

    .line 59
    iget-object v1, p0, Lcom/android/camera/activity/secure/SecureActivityModule$1;->val$mainThread:Lcom/google/android/apps/camera/async/MainThread;

    iget-object v2, p0, Lcom/android/camera/activity/secure/SecureActivityModule$1;->val$activityLifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    invoke-static {v1, v2, v0}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TIILG_(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 60
    return-void
.end method
