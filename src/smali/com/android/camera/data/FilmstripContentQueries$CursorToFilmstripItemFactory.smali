.class public interface abstract Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;
.super Ljava/lang/Object;
.source "FilmstripContentQueries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/FilmstripContentQueries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CursorToFilmstripItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lcom/android/camera/data/FilmstripItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get(Landroid/database/Cursor;)Lcom/android/camera/data/FilmstripItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TI;"
        }
    .end annotation
.end method
