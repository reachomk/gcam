.class final Lcom/android/camera/filmstrip/widget/FilmstripView$2;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/FilmstripView;->animateItemRemoval(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$removedItem:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V
    .locals 0

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$2;->val$removedItem:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView$2;->val$removedItem:Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->removeViewFromHierarchy()V

    .line 1605
    return-void
.end method
