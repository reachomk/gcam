.class final Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$1;
.super Ljava/lang/Object;
.source "ActivityLifecycle.java"

# interfaces
.implements Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

.field private synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$1;->this$0:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    iput-object p2, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKLC___(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V
    .locals 2

    .prologue
    .line 52
    instance-of v0, p1, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnPostCreate;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$1;->this$0:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->getObserverBundle$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7D662RJ4E9NMIP1FDTPIUGJLDPI6OP9R55662RJ4E9NMIP1FDTPIUGJLDPI6OP9R(Lcom/android/camera/burst/BurstA11yButtonController$Listener;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 56
    :cond_0
    return-void
.end method
