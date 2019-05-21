.class final Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;
.super Ljava/lang/Object;
.source "PhotoSphereMessageOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->showRotateDeviceIcon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

.field private synthetic val$clockwise:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;Z)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iput-boolean p2, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->val$clockwise:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const v2, 0x7f110149

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->access$000(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->val$clockwise:Z

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->val$clockwise:Z

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->access$002(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;Z)Z

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->val$clockwise:Z

    if-eqz v1, :cond_2

    .line 129
    const v1, 0x7f020105

    .line 127
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->access$100(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->access$102(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;Z)Z

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$5;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_1
    return-void

    .line 130
    :cond_2
    const v1, 0x7f020104

    goto :goto_0
.end method
