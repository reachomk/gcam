.class final Lcom/google/android/apps/refocus/RefocusModule$15;
.super Ljava/lang/Object;
.source "RefocusModule.java"

# interfaces
.implements Lcom/android/camera/ui/AbstractTutorialOverlay$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/refocus/RefocusModule;->adjustTutorialOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/RefocusModule;

.field private synthetic val$cachedRotationAnimation:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/RefocusModule;I)V
    .locals 0

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$15;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    iput p2, p0, Lcom/google/android/apps/refocus/RefocusModule$15;->val$cachedRotationAnimation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTutorialCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1048
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$15;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$1600$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TP6APJFCDQN6BQICLJ6UORLED6MUP3LDHIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR1E1O2UGR1DLIN4OA1CDQ6ITJ9EHSK6RREEHP6UR3CCLP3M___(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    .line 1049
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "refocus_show_tutorial"

    .line 1050
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1051
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$15;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0, v3}, Lcom/google/android/apps/refocus/RefocusModule;->access$2302(Lcom/google/android/apps/refocus/RefocusModule;Z)Z

    .line 1052
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$15;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    iget v1, p0, Lcom/google/android/apps/refocus/RefocusModule$15;->val$cachedRotationAnimation:I

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/RefocusModule;->access$2400(Lcom/google/android/apps/refocus/RefocusModule;I)V

    .line 1053
    return-void
.end method
