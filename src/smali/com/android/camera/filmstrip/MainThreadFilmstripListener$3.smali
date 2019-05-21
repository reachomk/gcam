.class final Lcom/android/camera/filmstrip/MainThreadFilmstripListener$3;
.super Ljava/lang/Object;
.source "MainThreadFilmstripListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/MainThreadFilmstripListener;

.field private synthetic val$index:I

.field private synthetic val$item:Lcom/android/camera/data/FilmstripItem;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/MainThreadFilmstripListener;ILcom/android/camera/data/FilmstripItem;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$3;->this$0:Lcom/android/camera/filmstrip/MainThreadFilmstripListener;

    iput p2, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$3;->val$index:I

    iput-object p3, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$3;->val$item:Lcom/android/camera/data/FilmstripItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$3;->this$0:Lcom/android/camera/filmstrip/MainThreadFilmstripListener;

    invoke-static {v0}, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->access$100(Lcom/android/camera/filmstrip/MainThreadFilmstripListener;)Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$3;->val$index:I

    iget-object v2, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$3;->val$item:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V

    .line 52
    return-void
.end method
