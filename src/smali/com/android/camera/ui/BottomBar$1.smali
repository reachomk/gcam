.class final Lcom/android/camera/ui/BottomBar$1;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 113
    iput-object p1, p0, Lcom/android/camera/ui/BottomBar$1;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$1;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-static {v0}, Lcom/android/camera/ui/BottomBar;->access$000(Lcom/android/camera/ui/BottomBar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 117
    return-void
.end method
