.class public interface abstract Lcom/google/android/apps/lightcycle/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/storage/StorageManager$StorageManagerDoneHandler;
    }
.end annotation


# virtual methods
.method public abstract addSessionDataAsync(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/storage/StorageManager$StorageManagerDoneHandler;)V
.end method

.method public abstract getLocalSessionStorage()Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setPanoramaDestination(Ljava/lang/String;)Z
.end method
