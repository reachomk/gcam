.class final Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$1;
.super Ljava/lang/Object;
.source "RGBZFocusControls.java"

# interfaces
.implements Lcom/google/android/apps/refocus/viewer/RefocusBokehControlBar$SliderUpdatedListener;


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
    .line 240
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$1;->this$1:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSliderDotPositionUpdated(I)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2$1;->this$1:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;

    iget-object v0, v0, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$2;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->access$700(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;F)V

    .line 244
    return-void
.end method
