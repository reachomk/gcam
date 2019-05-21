.class final Lcom/android/camera/debug/ClockSpeedViewRenderer$1;
.super Ljava/lang/Object;
.source "ClockSpeedViewRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/ClockSpeedViewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/debug/ClockSpeedViewRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/ClockSpeedViewRenderer;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer$1;->this$0:Lcom/android/camera/debug/ClockSpeedViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer$1;->this$0:Lcom/android/camera/debug/ClockSpeedViewRenderer;

    invoke-static {v0}, Lcom/android/camera/debug/ClockSpeedViewRenderer;->access$000(Lcom/android/camera/debug/ClockSpeedViewRenderer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 31
    return-void
.end method
