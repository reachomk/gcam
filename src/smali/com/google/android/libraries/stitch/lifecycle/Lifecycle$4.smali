.class final Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$4;
.super Ljava/lang/Object;
.source "Lifecycle.java"

# interfaces
.implements Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$LifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->onSaveInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

.field private synthetic val$outState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$4;->this$0:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iput-object p2, p0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$4;->val$outState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKLC___(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V
    .locals 3

    .prologue
    .line 249
    instance-of v0, p1, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnSaveInstanceState;

    if-eqz v0, :cond_0

    .line 250
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 253
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$4;->this$0:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    invoke-static {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->access$000$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UR39C9P62SJ9CLPIUSRKD5Q66Q1FDHKMCPB3F5HMOP9F9HKMCPB3F5HMOPAFC9PMASJMCLP3MAACD9GNCO9FDHGMSPPFADQ74QBECSTG____(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    iget-object v2, p0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle$4;->val$outState:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 256
    :cond_0
    return-void
.end method
