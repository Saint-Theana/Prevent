.class public final Lcom/android/server/usb/UsbMidiDevice;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMidiDevice$1;,
        Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UsbMidiDevice"


# instance fields
.field private final mAlsaCard:I

.field private final mAlsaDevice:I

.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field private mFileDescriptors:[Ljava/io/FileDescriptor;

.field private final mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

.field private mInputStreams:[Ljava/io/FileInputStream;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mOutputStreams:[Ljava/io/FileOutputStream;

.field private mPipeFD:I

.field private mPollFDs:[Landroid/system/StructPollfd;

.field private mServer:Landroid/media/midi/MidiDeviceServer;

.field private final mSubdeviceCount:I


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    return-void
.end method

.method private constructor <init>(III)V
    .registers 9
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "subdeviceCount"    # I

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    .line 73
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mPipeFD:I

    .line 75
    new-instance v2, Lcom/android/server/usb/UsbMidiDevice$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbMidiDevice$1;-><init>(Lcom/android/server/usb/UsbMidiDevice;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 158
    iput p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    .line 159
    iput p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    .line 160
    iput p3, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    .line 163
    move v0, p3

    .line 164
    .local v0, "inputCount":I
    new-array v2, p3, [Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    .line 165
    const/4 v1, 0x0

    .local v1, "port":I
    :goto_20
    if-ge v1, p3, :cond_2f

    .line 166
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    new-instance v3, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;)V

    aput-object v3, v2, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 157
    :cond_2f
    return-void
.end method

.method private closeLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 319
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 320
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 322
    :cond_18
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 324
    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 325
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    aget-object v1, v1, v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 327
    :cond_2a
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 329
    const/4 v0, 0x0

    :goto_2d
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    .line 330
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v1, v1, v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 332
    :cond_3c
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 335
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    .line 336
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    .line 317
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "properties"    # Landroid/os/Bundle;
    .param p2, "card"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-static {p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->nativeGetSubdeviceCount(II)I

    move-result v1

    .line 143
    .local v1, "subDeviceCount":I
    if-gtz v1, :cond_11

    .line 144
    const-string/jumbo v2, "UsbMidiDevice"

    const-string/jumbo v3, "nativeGetSubdeviceCount failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v4

    .line 148
    :cond_11
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/usb/UsbMidiDevice;-><init>(III)V

    .line 149
    .local v0, "midiDevice":Lcom/android/server/usb/UsbMidiDevice;
    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/UsbMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 150
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 151
    const-string/jumbo v2, "UsbMidiDevice"

    const-string/jumbo v3, "createDeviceServer failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v4

    .line 154
    :cond_29
    return-object v0
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private static native nativeGetSubdeviceCount(II)I
.end method

.method private native nativeOpen(III)[Ljava/io/FileDescriptor;
.end method

.method private openLocked()Z
    .registers 16

    .prologue
    .line 172
    iget v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    iget v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbMidiDevice;->nativeOpen(III)[Ljava/io/FileDescriptor;

    move-result-object v7

    .line 173
    .local v7, "fileDescriptors":[Ljava/io/FileDescriptor;
    if-nez v7, :cond_17

    .line 174
    const-string/jumbo v0, "UsbMidiDevice"

    const-string/jumbo v1, "nativeOpen failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    return v0

    .line 178
    :cond_17
    iput-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 179
    array-length v9, v7

    .line 182
    .local v9, "inputCount":I
    array-length v0, v7

    add-int/lit8 v10, v0, -0x1

    .line 184
    .local v10, "outputCount":I
    new-array v0, v9, [Landroid/system/StructPollfd;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    .line 185
    new-array v0, v9, [Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 186
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_26
    if-ge v8, v9, :cond_46

    .line 187
    aget-object v6, v7, v8

    .line 188
    .local v6, "fd":Ljava/io/FileDescriptor;
    new-instance v12, Landroid/system/StructPollfd;

    invoke-direct {v12}, Landroid/system/StructPollfd;-><init>()V

    .line 189
    .local v12, "pollfd":Landroid/system/StructPollfd;
    iput-object v6, v12, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 190
    sget v0, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v0, v0

    iput-short v0, v12, Landroid/system/StructPollfd;->events:S

    .line 191
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    aput-object v12, v0, v8

    .line 192
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v1, v0, v8

    .line 186
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 195
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v12    # "pollfd":Landroid/system/StructPollfd;
    :cond_46
    new-array v0, v10, [Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 196
    new-array v0, v10, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 197
    const/4 v8, 0x0

    :goto_4f
    if-ge v8, v10, :cond_73

    .line 198
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    aget-object v2, v7, v8

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v1, v0, v8

    .line 200
    new-instance v14, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v14}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    .line 201
    .local v14, "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v14, v0, v8

    .line 202
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v0, v0, v8

    invoke-virtual {v14}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 197
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 205
    .end local v14    # "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    :cond_73
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v11

    .line 208
    .local v11, "outputReceivers":[Landroid/media/midi/MidiReceiver;
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$2;

    const-string/jumbo v1, "UsbMidiDevice input thread"

    invoke-direct {v0, p0, v1, v11}, Lcom/android/server/usb/UsbMidiDevice$2;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/usb/UsbMidiDevice$2;->start()V

    .line 253
    const/4 v13, 0x0

    .local v13, "port":I
    :goto_85
    if-ge v13, v10, :cond_b0

    .line 254
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v3, v0, v13

    .line 255
    .local v3, "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v4, v0, v13

    .line 256
    .local v4, "outputStreamF":Ljava/io/FileOutputStream;
    move v5, v13

    .line 258
    .local v5, "portF":I
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UsbMidiDevice output thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbMidiDevice$3;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    invoke-virtual {v0}, Lcom/android/server/usb/UsbMidiDevice$3;->start()V

    .line 253
    add-int/lit8 v13, v13, 0x1

    goto :goto_85

    .line 284
    .end local v3    # "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    .end local v4    # "outputStreamF":Ljava/io/FileOutputStream;
    .end local v5    # "portF":I
    :cond_b0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method private register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 289
    const-string/jumbo v1, "midi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    .line 290
    .local v0, "midiManager":Landroid/media/midi/MidiManager;
    if-nez v0, :cond_18

    .line 291
    const-string/jumbo v1, "UsbMidiDevice"

    const-string/jumbo v2, "No MidiManager in UsbMidiDevice.create()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v8

    .line 295
    :cond_18
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    .line 296
    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    move-object v4, v3

    move-object v5, p2

    .line 295
    invoke-virtual/range {v0 .. v7}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 297
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v1, :cond_2b

    .line 298
    return v8

    .line 301
    :cond_2b
    return v6
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    if-eqz v0, :cond_a

    .line 308
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    :cond_a
    monitor-exit v1

    .line 312
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_14

    .line 313
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 305
    :cond_14
    return-void

    .line 306
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method
