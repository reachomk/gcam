.class final Lcom/android/camera/ui/focus/FocusControllerImpl2015$4;
.super Ljava/lang/Object;
.source "FocusControllerImpl2015.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/focus/FocusControllerImpl2015;->clearFocusIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusControllerImpl2015;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$4;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearFocusIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$4;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;->access$000(Lcom/android/camera/ui/focus/FocusControllerImpl2015;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    .line 121
    return-void
.end method
