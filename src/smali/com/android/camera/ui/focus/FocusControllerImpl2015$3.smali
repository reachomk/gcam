.class final Lcom/android/camera/ui/focus/FocusControllerImpl2015$3;
.super Ljava/lang/Object;
.source "FocusControllerImpl2015.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/focus/FocusControllerImpl2015;->showActiveFocusAt(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

.field private synthetic val$viewX:I

.field private synthetic val$viewY:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusControllerImpl2015;II)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$3;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    iput p2, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$3;->val$viewX:I

    iput p3, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$3;->val$viewY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 88
    invoke-static {}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;->access$100()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$3;->val$viewX:I

    iget v2, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$3;->val$viewY:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "showActiveFocusAt("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$3;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;->access$000(Lcom/android/camera/ui/focus/FocusControllerImpl2015;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->startActiveFocus()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$3;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;->access$000(Lcom/android/camera/ui/focus/FocusControllerImpl2015;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$3;->val$viewX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$3;->val$viewY:I

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/focus/FocusRing;->setFocusLocation(FF)V

    .line 94
    return-void
.end method
