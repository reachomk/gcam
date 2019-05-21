.class final Lcom/android/camera/ui/BottomBar$6;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomBar;->transitionToCapture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/BottomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomBar;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/camera/ui/BottomBar$6;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$6;->this$0:Lcom/android/camera/ui/BottomBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->setVisibility(I)V

    .line 284
    return-void
.end method
