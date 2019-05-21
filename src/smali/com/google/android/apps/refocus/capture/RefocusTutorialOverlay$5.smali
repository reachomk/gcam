.class final Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$5;
.super Ljava/lang/Object;
.source "RefocusTutorialOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$5;->this$0:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$5;->this$0:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;->closeAndComplete()V

    .line 259
    return-void
.end method
