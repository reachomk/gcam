.class final Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$2;
.super Ljava/lang/Object;
.source "RGBZFocusControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$2;->this$1:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$2;->this$1:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;

    iget-object v0, v0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$800(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$2;->this$1:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;

    iget-object v0, v0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    invoke-static {v0}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$800(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;)Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;->onDone()V

    .line 256
    :cond_0
    return-void
.end method
