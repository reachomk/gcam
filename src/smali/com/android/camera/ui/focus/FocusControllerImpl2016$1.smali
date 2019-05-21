.class final Lcom/android/camera/ui/focus/FocusControllerImpl2016$1;
.super Ljava/lang/Object;
.source "FocusControllerImpl2016.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/focus/FocusControllerImpl2016;->clearFocusIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2016;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusControllerImpl2016;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016$1;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2016;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearFocusIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016$1;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2016;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->access$100(Lcom/android/camera/ui/focus/FocusControllerImpl2016;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->hide()V

    .line 102
    return-void
.end method
