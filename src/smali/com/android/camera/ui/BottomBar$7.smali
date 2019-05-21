.class final Lcom/android/camera/ui/BottomBar$7;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomBar;->setShutterButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/BottomBar;

.field private synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomBar;Z)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/camera/ui/BottomBar$7;->this$0:Lcom/android/camera/ui/BottomBar;

    iput-boolean p2, p0, Lcom/android/camera/ui/BottomBar$7;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$7;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-static {v0}, Lcom/android/camera/ui/BottomBar;->access$800(Lcom/android/camera/ui/BottomBar;)Lcom/android/camera/ui/ShutterButtonHolder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/BottomBar$7;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButtonHolder;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$7;->this$0:Lcom/android/camera/ui/BottomBar;

    iget-boolean v1, p0, Lcom/android/camera/ui/BottomBar$7;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->setShutterButtonImportantToA11y(Z)V

    .line 536
    return-void
.end method
