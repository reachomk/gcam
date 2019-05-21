.class final Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$1;
.super Ljava/lang/Object;
.source "PhotoSphereMessageOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->showShortMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

.field private synthetic val$messageId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;I)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$1;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iput p2, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$1;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$1;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    const v1, 0x7f110147

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    iget v1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$1;->val$messageId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    return-void
.end method
