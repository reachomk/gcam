.class public interface abstract Lcom/android/camera/session/CaptureSessionManager;
.super Ljava/lang/Object;
.source "CaptureSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    }
.end annotation


# virtual methods
.method public abstract addSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract createNewSession$5166KOBMC4NMOOBECSNL6T3ID5N6EEQA9HGMSP3IDTKM8BRCDTHM2T39DTN2UJ3FCDGN8QBFDOTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7C______(Ljava/lang/String;JLandroid/location/Location;)Lcom/android/camera/session/StackableSession;
.end method

.method public abstract fillTemporarySession(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract getErrorMessage(Landroid/net/Uri;)Lcom/android/camera/ui/UiString;
.end method

.method public abstract getSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDOTG____(Landroid/net/Uri;)Lcom/android/camera/session/StackableSession;
.end method

.method public abstract getSessionDirectory(Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract hasErrorMessage(Landroid/net/Uri;)Z
.end method

.method public abstract putErrorMessage(Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V
.end method

.method public abstract putSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKLC___(Landroid/net/Uri;Lcom/android/camera/session/StackableSession;)V
.end method

.method public abstract removeErrorMessage(Landroid/net/Uri;)V
.end method

.method public abstract removeSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDOTG____(Landroid/net/Uri;)Lcom/android/camera/session/StackableSession;
.end method

.method public abstract removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method
