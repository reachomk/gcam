.class final Lcom/android/camera/filmstrip/FilmstripAccessibilityController$1;
.super Ljava/lang/Object;
.source "FilmstripAccessibilityController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/FilmstripAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/FilmstripAccessibilityController;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/FilmstripAccessibilityController;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController$1;->this$0:Lcom/android/camera/filmstrip/FilmstripAccessibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripAccessibilityController$1;->this$0:Lcom/android/camera/filmstrip/FilmstripAccessibilityController;

    invoke-static {v0}, Lcom/android/camera/filmstrip/FilmstripAccessibilityController;->access$000(Lcom/android/camera/filmstrip/FilmstripAccessibilityController;)Lcom/android/camera/filmstrip/widget/FilmstripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getController()Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController;->goToPreviousItem()Z

    .line 30
    return-void
.end method
