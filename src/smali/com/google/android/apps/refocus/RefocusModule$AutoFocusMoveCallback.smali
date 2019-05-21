.class final Lcom/google/android/apps/refocus/RefocusModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "RefocusModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/RefocusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/RefocusModule;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$AutoFocusMoveCallback;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/refocus/RefocusModule;B)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/apps/refocus/RefocusModule$AutoFocusMoveCallback;-><init>(Lcom/google/android/apps/refocus/RefocusModule;)V

    return-void
.end method


# virtual methods
.method public final onAutoFocusMoving(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$AutoFocusMoveCallback;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/ui/focus/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/focus/FocusOverlayManager;->onAutoFocusMoving(Z)V

    .line 139
    return-void
.end method
