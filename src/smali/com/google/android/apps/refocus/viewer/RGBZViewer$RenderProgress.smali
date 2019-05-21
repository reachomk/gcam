.class Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;
.super Ljava/lang/Object;
.source "RGBZViewer.java"

# interfaces
.implements Lcom/google/android/apps/refocus/processing/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/viewer/RGBZViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/refocus/viewer/RGBZViewer;

.field private wasCancelled:Z


# direct methods
.method private constructor <init>(Lcom/google/android/apps/refocus/viewer/RGBZViewer;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;->this$0:Lcom/google/android/apps/refocus/viewer/RGBZViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;->wasCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/refocus/viewer/RGBZViewer;Lcom/google/android/apps/refocus/viewer/RGBZViewer$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;-><init>(Lcom/google/android/apps/refocus/viewer/RGBZViewer;)V

    return-void
.end method

.method private setStatus(I)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;->wasCancelled:Z

    .line 53
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public setRange(FF)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public setStatus(Lcom/android/camera/ui/UiString;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public wasCancelled()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/viewer/RGBZViewer$RenderProgress;->wasCancelled:Z

    return v0
.end method
