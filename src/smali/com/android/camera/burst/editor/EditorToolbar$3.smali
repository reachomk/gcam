.class final Lcom/android/camera/burst/editor/EditorToolbar$3;
.super Ljava/lang/Object;
.source "EditorToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/EditorToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/EditorToolbar;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/EditorToolbar;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/burst/editor/EditorToolbar$3;->this$0:Lcom/android/camera/burst/editor/EditorToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar$3;->this$0:Lcom/android/camera/burst/editor/EditorToolbar;

    invoke-static {v0}, Lcom/android/camera/burst/editor/EditorToolbar;->access$000(Lcom/android/camera/burst/editor/EditorToolbar;)Lcom/android/camera/burst/editor/EditorToolbar$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/editor/EditorToolbar$Listener;->onToolbarBack()V

    .line 148
    return-void
.end method
